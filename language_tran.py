from googletrans import LANGUAGES, Translator
import speech_recognition
import gtts
import playsound
# Define the Hindi text to be translated
hindi_text = "यह हिंदी में लिखा गया टेक्स्ट है।"


recognizer = speech_recognition.Recognizer()
with speech_recognition.Microphone() as source:
    print("speaknow")
    voice = recognizer.listen(source)
    print("stop")
    text= recognizer.recognize_google(voice,language="fr")
    print(text)
# Create a translator object and translate the text
translator = Translator()
translated = translator.translate(text, src='en', dest='fr')

# Print the original and translated texts
print(f"Original text (Hindi): {hindi_text}")
print(f"Translated text (English): {translated.text}")
converted_audio = gtts.gTTS(translated.text, lang="fr")
converted_audio.save("test.mp3")
playsound.playsound("test.mp3")
