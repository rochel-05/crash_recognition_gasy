FROM python:3.7

RUN mkdir /crashrecognitiongasy
WORKDIR /crashrecognitiongasy

COPY usersDb.db /crashrecognitiongasy
COPY test_accuracy_RF.py /crashrecognitiongasy
COPY table.py /crashrecognitiongasy
COPY run.py /crashrecognitiongasy
COPY model_RF.py /crashrecognitiongasy
COPY invetigate_RF.py /crashrecognitiongasy
COPY extract_frames_from_video.py /crashrecognitiongasy
COPY dummy.py /crashrecognitiongasy
COPY data.csv /crashrecognitiongasy
COPY app.py /crashrecognitiongasy
COPY Dockerfile /crashrecognitiongasy
COPY requirements.txt /crashrecognitiongasy
COPY .gitattributes /crashrecognitiongasy
COPY templates /crashrecognitiongasy/templates
COPY static /crashrecognitiongasy/static
COPY model /crashrecognitiongasy/model
COPY generated_frames_train_raw /crashrecognitiongasy/generated_frames_train_raw
COPY generated_frames_train /crashrecognitiongasy/generated_frames_train
COPY generated_frames_test /crashrecognitiongasy/generated_frames_test
COPY draft /crashrecognitiongasy/draft
COPY databaseUser /crashrecognitiongasy/databaseUser
COPY data /crashrecognitiongasy/data
COPY chrome_driver /crashrecognitiongasy/chrome_driver

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
CMD ["python", "/crashrecognitiongasy/run.py"]
