from fastapi import FastAPI, UploadFile, File, Form
import requests, os
from pydub import AudioSegment


app = Fast