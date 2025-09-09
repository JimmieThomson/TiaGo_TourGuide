import simpleaudio as sa

wave_obj = sa.WaveObject.from_wave_file('trumpet.wav').play().wait_done()