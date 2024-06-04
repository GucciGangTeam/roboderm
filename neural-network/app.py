import os

import numpy as np
from flask import Flask, request, jsonify
from tensorflow.keras.models import load_model # Для загрузки нейросети
from tensorflow.keras.preprocessing import image_dataset_from_directory #Для предобработки изображения


app = Flask(__name__)


def analyze_skin_disease():
    model = load_model('static/model/Doctor13.h5')  # Загружаем нейросеть

    input_dataset = Preprocessing("static/images")

    features = model.predict(input_dataset)  # Прогнозирование нейросети

    # Представление прогноза в нормальном виде
    r1, r2, r3 = Result(features)
    res1 = r1[0] + ' ' + str(round(r1[1], 2)) + '%'
    res2 = r2[0] + ' ' + str(round(r2[1], 2)) + '%'
    res3 = r3[0] + ' ' + str(round(r3[1], 2)) + '%'

    return {
        "res1": res1,
        "res2": res2,
        "res3": res3
        }

def Del(folder): # удаление изображения
    for the_file in os.listdir(folder):
        file_path = os.path.join(folder, the_file)
        try:
            if os.path.isfile(file_path):
                os.unlink(file_path)
        except Exception as e:
            print(e)

def Preprocessing(path_work):
    input_dataset = image_dataset_from_directory(path_work,  # Предобработка изображения
                                                  subset='validation',
                                                  seed=45,
                                                  validation_split=0.99,
                                                  batch_size=1,
                                                  image_size=(100, 100))
    return input_dataset

def Result(features) -> ():
    classes = ['Acne (Акне)', 'Actinic Keratosis (Актинический кератоз)', 'Atopic Dermatitis (Атопический дерматит)', 'Contact Dermatitis (Контактный дерматит)', 'Eczema (Экзема)', 'Hemangioma (Гемангиома)',
               'Herpes (Герпес)', 'Psoriasis (Псориаз)', 'Rosacea (Розация)', 'Scabies (Чесотка)', 'Urticaria (Крапивница)', 'Vasculitis (Васкулит)', 'Warts (Бородавки)']
    res1 = classes[np.argmax(features[0])], features[0][np.argmax(features[0])] * 100
    features[0][np.argmax(features[0])] = 0

    res2 = classes[np.argmax(features[0])], features[0][np.argmax(features[0])] * 100
    features[0][np.argmax(features[0])] = 0

    res3 = classes[np.argmax(features[0])], features[0][np.argmax(features[0])] * 100
    return res1, res2, res3


@app.route('/analyze', methods=['POST'])
def analyze():
    if 'image' not in request.files:
        return jsonify({"error": "No image provided"}), 400
    image_file = request.files['image']
    file_path = 'static/images/predict/' + image_file.filename.split('/')[-1]
    image_file.save(file_path)
    with open(file_path, 'rb+') as file:
        file.flush()
        os.fsync(file.fileno())
    result = analyze_skin_disease()
    Del('static/images/predict/')
    return jsonify(result)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
