# Whisper ONNX Benchmark Report

- Run ID: `run_1_20260222_072139`
- Audio Dir: `audio`
- ONNX Dir: `models/whisper-base-with-past`
- PyTorch Dir: `models/openai-whisper-base-pytorch`
- Processor Source: `models/whisper-base-with-past`
- Implementations: `ONNXRuntime HF Pipeline, ONNXRuntime Custom Python, OpenAI Whisper Python`
- Dry Run: `False`
- Stride (left,right): `(0.0, 0.0)`
- Benchmark Total Time (s): `7725.666531`

## Baseline Definitions

- Primary baseline (top priority): `ONNXRuntime HF Pipeline beam transcription per file (num_beams=5)`.
- Secondary comparison baseline: `OpenAI Whisper Python default transcription per file`.

## Summary

| Cores | Core Binding | Implementation | Decoding | Beam Size | Avg Time (s) | P95 Time (s) | Avg WER vs HF Beam5 | Avg CER vs HF Beam5 | Avg WER vs OpenAI | Avg CER vs OpenAI | RAM Usage (MB) |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | 1 | 40.797157 | 71.870499 | 0.398993 | 0.329059 | 0.495501 | 0.484086 | 3671.242 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | 1 | 11.705152 | 20.458118 | 0.960138 | 0.896004 | 0.135453 | 0.114333 | 5318.121 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | 1 | 39.770205 | 69.496173 | 0.398993 | 0.329059 | 0.495501 | 0.484086 | 5318.121 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | 1 | 12.827446 | 22.340931 | 0.960138 | 0.896004 | 0.135453 | 0.114333 | 5349.32 |
| 16 | 0-15 | OpenAI Whisper Python | default | 0 | 31.83651 | 54.818002 | 1.038705 | 1.013513 | 0.001113 | 0.000488 | 5349.32 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | 1 | 36.571732 | 62.987688 | 0.398993 | 0.329059 | 0.495501 | 0.484086 | 5349.32 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | 1 | 10.778384 | 19.095109 | 0.960138 | 0.896004 | 0.135453 | 0.114333 | 5349.32 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | 1 | 37.111223 | 65.20981 | 0.398993 | 0.329059 | 0.495501 | 0.484086 | 5349.32 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | 1 | 11.678623 | 19.918448 | 0.960138 | 0.896004 | 0.135453 | 0.114333 | 5349.32 |
| 32 | 16-47 | OpenAI Whisper Python | default | 0 | 33.284592 | 61.002594 | 1.042769 | 1.016494 | 0.005969 | 0.003668 | 5349.32 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | 1 | 38.065552 | 65.951541 | 0.398993 | 0.329059 | 0.495501 | 0.484086 | 5349.32 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | 1 | 9.310889 | 16.088421 | 0.960138 | 0.896004 | 0.135453 | 0.114333 | 5349.32 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | 1 | 36.435529 | 61.132015 | 0.398993 | 0.329059 | 0.495501 | 0.484086 | 5349.32 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | 1 | 10.337358 | 18.048765 | 0.960138 | 0.896004 | 0.135453 | 0.114333 | 5349.32 |
| 48 | 48-95 | OpenAI Whisper Python | default | 0 | 32.265711 | 56.342533 | 1.041245 | 1.014827 | 0.004148 | 0.002316 | 5349.32 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | 1 | 38.304277 | 67.966721 | 0.398993 | 0.329059 | 0.495501 | 0.484086 | 5349.32 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | 1 | 9.451499 | 16.134802 | 0.960138 | 0.896004 | 0.135453 | 0.114333 | 5349.32 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | 1 | 38.210899 | 67.231931 | 0.398993 | 0.329059 | 0.495501 | 0.484086 | 5349.32 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | 1 | 9.734825 | 17.121175 | 0.960138 | 0.896004 | 0.135453 | 0.114333 | 5349.32 |
| 65 | 96-160 | OpenAI Whisper Python | default | 0 | 31.944095 | 54.794889 | 1.039298 | 1.013902 | 0.001163 | 0.000554 | 5349.32 |

## Per-File Accuracy Tables

### Core 16 (0-15)

| Core | Core Binding | File | Duration (s) | Implementation | Decoding | Beam Size | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 16 | 0-15 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | greedy | 1 | 1.946712 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 16 | 0-15 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | beam | 1 | 2.230918 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 16 | 0-15 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | greedy | 1 | 2.913 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 16 | 0-15 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | beam | 1 | 3.130876 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 16 | 0-15 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | greedy | 1 | 4.59801 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 16 | 0-15 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | beam | 1 | 5.005373 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 16 | 0-15 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | beam | 1 | 6.547838 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 16 | 0-15 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | greedy | 1 | 6.664195 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 16 | 0-15 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | greedy | 1 | 8.875203 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 16 | 0-15 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | beam | 1 | 8.881743 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 16 | 0-15 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | greedy | 1 | 9.137278 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 16 | 0-15 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | beam | 1 | 9.710355 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 16 | 0-15 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | greedy | 1 | 12.053527 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 16 | 0-15 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | beam | 1 | 13.01013 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 16 | 0-15 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | greedy | 1 | 14.630499 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 16 | 0-15 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | greedy | 1 | 15.48346 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 16 | 0-15 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | greedy | 1 | 15.77558 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 16 | 0-15 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | beam | 1 | 16.184073 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 16 | 0-15 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | beam | 1 | 16.492405 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 16 | 0-15 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | beam | 1 | 16.813245 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 16 | 0-15 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | greedy | 1 | 16.854332 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 16 | 0-15 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | beam | 1 | 17.711334 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 16 | 0-15 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | greedy | 1 | 19.684217 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 16 | 0-15 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | greedy | 1 | 21.091309 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
| 16 | 0-15 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | beam | 1 | 21.220546 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 16 | 0-15 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | beam | 1 | 23.257609 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
| 16 | 0-15 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | beam | 1 | 25.551227 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 16 | 0-15 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 26.287103 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 16 | 0-15 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | beam | 1 | 42.105264 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 16 | 0-15 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | greedy | 1 | 42.838279 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 16 | 0-15 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | beam | 1 | 52.768849 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 16 | 0-15 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | beam | 1 | 53.223257 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 16 | 0-15 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 53.388483 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 16 | 0-15 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | beam | 1 | 53.787048 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 16 | 0-15 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | greedy | 1 | 54.338297 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 16 | 0-15 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | greedy | 1 | 55.699527 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 16 | 0-15 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | beam | 1 | 65.93256 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 16 | 0-15 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | greedy | 1 | 66.49741 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 16 | 0-15 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | beam | 1 | 72.411857 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
| 16 | 0-15 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | greedy | 1 | 76.266662 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |

### Core 32 (16-47)

| Core | Core Binding | File | Duration (s) | Implementation | Decoding | Beam Size | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 32 | 16-47 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | greedy | 1 | 1.852859 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 32 | 16-47 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | beam | 1 | 2.182182 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 32 | 16-47 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | greedy | 1 | 2.82095 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 32 | 16-47 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | beam | 1 | 3.202993 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 32 | 16-47 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | greedy | 1 | 4.546348 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 32 | 16-47 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | beam | 1 | 4.558639 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 32 | 16-47 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | greedy | 1 | 5.758188 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 32 | 16-47 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | beam | 1 | 6.288787 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 32 | 16-47 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | beam | 1 | 7.886441 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 32 | 16-47 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | greedy | 1 | 8.369416 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 32 | 16-47 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | greedy | 1 | 8.684015 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 32 | 16-47 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | beam | 1 | 9.181242 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 32 | 16-47 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | greedy | 1 | 11.034598 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 32 | 16-47 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | beam | 1 | 12.301484 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 32 | 16-47 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | greedy | 1 | 12.897269 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 32 | 16-47 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | greedy | 1 | 13.595827 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 32 | 16-47 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | beam | 1 | 14.406524 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 32 | 16-47 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | greedy | 1 | 14.51475 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 32 | 16-47 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | beam | 1 | 14.756465 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 32 | 16-47 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | beam | 1 | 15.858819 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 32 | 16-47 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | greedy | 1 | 15.97708 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 32 | 16-47 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | beam | 1 | 16.446703 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 32 | 16-47 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | greedy | 1 | 18.883923 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 32 | 16-47 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | greedy | 1 | 19.267898 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
| 32 | 16-47 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | beam | 1 | 19.440505 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 32 | 16-47 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | beam | 1 | 20.309493 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
| 32 | 16-47 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 24.709315 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 32 | 16-47 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | beam | 1 | 24.983799 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 32 | 16-47 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | greedy | 1 | 36.477411 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 32 | 16-47 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | beam | 1 | 36.86403 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 32 | 16-47 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | greedy | 1 | 49.269997 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 32 | 16-47 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 49.412851 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 32 | 16-47 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | beam | 1 | 49.636355 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 32 | 16-47 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | beam | 1 | 49.638921 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 32 | 16-47 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | greedy | 1 | 49.921372 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 32 | 16-47 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | beam | 1 | 50.01854 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 32 | 16-47 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | greedy | 1 | 60.412146 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 32 | 16-47 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | beam | 1 | 62.552846 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 32 | 16-47 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | greedy | 1 | 65.094949 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
| 32 | 16-47 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | beam | 1 | 67.383691 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |

### Core 48 (48-95)

| Core | Core Binding | File | Duration (s) | Implementation | Decoding | Beam Size | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 48 | 48-95 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | greedy | 1 | 1.552254 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 48 | 48-95 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | beam | 1 | 1.987676 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 48 | 48-95 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | greedy | 1 | 2.283516 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 48 | 48-95 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | beam | 1 | 2.506147 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 48 | 48-95 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | greedy | 1 | 3.851381 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 48 | 48-95 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | beam | 1 | 3.997609 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 48 | 48-95 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | beam | 1 | 6.238503 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 48 | 48-95 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | greedy | 1 | 6.396302 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 48 | 48-95 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | greedy | 1 | 7.611678 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 48 | 48-95 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | beam | 1 | 7.701969 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 48 | 48-95 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | beam | 1 | 7.750854 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 48 | 48-95 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | greedy | 1 | 8.883686 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 48 | 48-95 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | greedy | 1 | 9.683384 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 48 | 48-95 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | beam | 1 | 10.669722 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 48 | 48-95 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | greedy | 1 | 11.597896 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 48 | 48-95 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | greedy | 1 | 11.666872 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 48 | 48-95 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | greedy | 1 | 12.706098 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 48 | 48-95 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | beam | 1 | 12.928312 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 48 | 48-95 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | beam | 1 | 13.617229 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 48 | 48-95 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | beam | 1 | 13.905 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 48 | 48-95 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | beam | 1 | 15.856302 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 48 | 48-95 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | greedy | 1 | 15.972753 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 48 | 48-95 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | greedy | 1 | 16.067277 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 48 | 48-95 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | greedy | 1 | 16.183059 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
| 48 | 48-95 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | beam | 1 | 17.841871 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
| 48 | 48-95 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | beam | 1 | 18.218042 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 48 | 48-95 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | beam | 1 | 23.719246 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 48 | 48-95 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 25.736081 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 48 | 48-95 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | beam | 1 | 37.732139 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 48 | 48-95 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | greedy | 1 | 40.558157 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 48 | 48-95 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | beam | 1 | 48.952397 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 48 | 48-95 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 50.173812 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 48 | 48-95 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | greedy | 1 | 50.427323 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 48 | 48-95 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | beam | 1 | 50.814896 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 48 | 48-95 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | greedy | 1 | 51.414574 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 48 | 48-95 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | beam | 1 | 51.512596 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 48 | 48-95 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | beam | 1 | 58.460842 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 48 | 48-95 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | greedy | 1 | 60.975272 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 48 | 48-95 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | beam | 1 | 63.317519 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
| 48 | 48-95 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | greedy | 1 | 70.023034 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |

### Core 65 (96-160)

| Core | Core Binding | File | Duration (s) | Implementation | Decoding | Beam Size | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 65 | 96-160 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | beam | 1 | 1.573303 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 65 | 96-160 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | greedy | 1 | 1.619825 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 65 | 96-160 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | beam | 1 | 2.535282 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 65 | 96-160 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | greedy | 1 | 2.662556 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 65 | 96-160 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | beam | 1 | 4.213886 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 65 | 96-160 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | greedy | 1 | 4.563061 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 65 | 96-160 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | greedy | 1 | 6.457666 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 65 | 96-160 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | beam | 1 | 6.727094 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 65 | 96-160 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | beam | 1 | 7.265976 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 65 | 96-160 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | greedy | 1 | 7.597887 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 65 | 96-160 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | greedy | 1 | 8.519411 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 65 | 96-160 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | beam | 1 | 9.925631 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 65 | 96-160 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | beam | 1 | 10.073099 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 65 | 96-160 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | greedy | 1 | 10.874409 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 65 | 96-160 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | greedy | 1 | 10.919571 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 65 | 96-160 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | greedy | 1 | 11.180362 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 65 | 96-160 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | beam | 1 | 11.458897 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 65 | 96-160 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | beam | 1 | 12.398351 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 65 | 96-160 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | greedy | 1 | 12.929883 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 65 | 96-160 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | beam | 1 | 13.862674 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 65 | 96-160 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | greedy | 1 | 15.277815 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 65 | 96-160 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | greedy | 1 | 15.572858 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 65 | 96-160 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | beam | 1 | 16.200175 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 65 | 96-160 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | beam | 1 | 16.416626 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 65 | 96-160 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | greedy | 1 | 16.594575 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
| 65 | 96-160 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | beam | 1 | 17.697625 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
| 65 | 96-160 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | beam | 1 | 23.881321 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 65 | 96-160 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 25.492519 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 65 | 96-160 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | beam | 1 | 39.113212 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 65 | 96-160 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | greedy | 1 | 39.72305 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 65 | 96-160 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 48.940231 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 65 | 96-160 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | beam | 1 | 49.820179 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 65 | 96-160 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | beam | 1 | 50.18625 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 65 | 96-160 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | greedy | 1 | 51.173264 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 65 | 96-160 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | greedy | 1 | 52.251952 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 65 | 96-160 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | beam | 1 | 52.371082 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 65 | 96-160 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | beam | 1 | 63.231876 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 65 | 96-160 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | greedy | 1 | 63.970536 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 65 | 96-160 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | beam | 1 | 70.504703 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
| 65 | 96-160 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | greedy | 1 | 71.236327 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |

## Latency by Core and Implementation

### Core 16 (0-15) | ONNXRuntime HF Pipeline | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_04.mp3 | 98.6535 | 6.664195 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_01.mp3 | 172.1935 | 9.137278 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_02.mp3 | 265.9735 | 16.854332 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_03.mp3 | 476.9335 | 26.287103 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_07.mp3 | 572.6135 | 42.838279 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_08.mp3 | 750.9335 | 53.388483 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_10.mp3 | 646.8335 | 54.338297 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_05.mp3 | 614.2335 | 55.699527 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_09.mp3 | 959.9535 | 66.49741 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_06.mp3 | 901.0335 | 76.266662 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
|  |  |  |  |  |  | 407.971566 |  |  |  |  |

### Core 16 (0-15) | ONNXRuntime HF Pipeline | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_04.mp3 | 98.6535 | 6.547838 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_01.mp3 | 172.1935 | 8.881743 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_02.mp3 | 265.9735 | 16.492405 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_03.mp3 | 476.9335 | 25.551227 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_07.mp3 | 572.6135 | 42.105264 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_08.mp3 | 750.9335 | 52.768849 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_10.mp3 | 646.8335 | 53.223257 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_05.mp3 | 614.2335 | 53.787048 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_09.mp3 | 959.9535 | 65.93256 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_06.mp3 | 901.0335 | 72.411857 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
|  |  |  |  |  |  | 397.702048 |  |  |  |  |

### Core 16 (0-15) | ONNXRuntime Custom Python | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_04.mp3 | 98.6535 | 1.946712 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_01.mp3 | 172.1935 | 2.913 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_02.mp3 | 265.9735 | 4.59801 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_03.mp3 | 476.9335 | 8.875203 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_07.mp3 | 572.6135 | 12.053527 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_05.mp3 | 614.2335 | 14.630499 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_10.mp3 | 646.8335 | 15.48346 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_08.mp3 | 750.9335 | 15.77558 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_09.mp3 | 959.9535 | 19.684217 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_06.mp3 | 901.0335 | 21.091309 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
|  |  |  |  |  |  | 117.051517 |  |  |  |  |

### Core 16 (0-15) | ONNXRuntime Custom Python | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_04.mp3 | 98.6535 | 2.230918 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_01.mp3 | 172.1935 | 3.130876 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_02.mp3 | 265.9735 | 5.005373 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_03.mp3 | 476.9335 | 9.710355 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_07.mp3 | 572.6135 | 13.01013 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_05.mp3 | 614.2335 | 16.184073 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_10.mp3 | 646.8335 | 16.813245 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_08.mp3 | 750.9335 | 17.711334 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_09.mp3 | 959.9535 | 21.220546 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_06.mp3 | 901.0335 | 23.257609 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
|  |  |  |  |  |  | 128.274459 |  |  |  |  |

### Core 16 (0-15) | OpenAI Whisper Python | default

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 16 | 0-15 | OpenAI Whisper Python | default | video_04.mp3 | 98.6535 | 5.060393 | 0.0 | 0.794393 | 0.0 | 0.801603 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_01.mp3 | 172.1935 | 7.818692 | 0.0 | 2.430108 | 0.0 | 2.297297 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_02.mp3 | 265.9735 | 12.400281 | 0.0 | 1.018939 | 0.0 | 0.985768 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_03.mp3 | 476.9335 | 27.844114 | 0.0 | 0.85759 | 0.0 | 0.87608 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_07.mp3 | 572.6135 | 31.723546 | 0.0 | 1.456767 | 0.0 | 1.458837 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_05.mp3 | 614.2335 | 39.112871 | 0.0 | 0.557841 | 0.0 | 0.555352 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_08.mp3 | 750.9335 | 40.175711 | 0.0 | 1.088452 | 0.0 | 1.088828 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_10.mp3 | 646.8335 | 45.333545 | 0.0 | 0.704527 | 0.0 | 0.661939 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_06.mp3 | 901.0335 | 50.747699 | 0.0 | 0.73161 | 0.0 | 0.702887 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_09.mp3 | 959.9535 | 58.14825 | 0.011128 | 0.746825 | 0.004876 | 0.706536 |
|  |  |  |  |  |  | 318.365102 |  |  |  |  |

### Core 32 (16-47) | ONNXRuntime HF Pipeline | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_04.mp3 | 98.6535 | 5.758188 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_01.mp3 | 172.1935 | 8.684015 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_02.mp3 | 265.9735 | 15.97708 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_03.mp3 | 476.9335 | 24.709315 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_07.mp3 | 572.6135 | 36.477411 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_10.mp3 | 646.8335 | 49.269997 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_08.mp3 | 750.9335 | 49.412851 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_05.mp3 | 614.2335 | 49.921372 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_09.mp3 | 959.9535 | 60.412146 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_06.mp3 | 901.0335 | 65.094949 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
|  |  |  |  |  |  | 365.717324 |  |  |  |  |

### Core 32 (16-47) | ONNXRuntime HF Pipeline | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_04.mp3 | 98.6535 | 6.288787 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_01.mp3 | 172.1935 | 7.886441 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_02.mp3 | 265.9735 | 15.858819 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_03.mp3 | 476.9335 | 24.983799 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_07.mp3 | 572.6135 | 36.86403 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_08.mp3 | 750.9335 | 49.636355 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_10.mp3 | 646.8335 | 49.638921 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_05.mp3 | 614.2335 | 50.01854 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_09.mp3 | 959.9535 | 62.552846 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_06.mp3 | 901.0335 | 67.383691 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
|  |  |  |  |  |  | 371.112229 |  |  |  |  |

### Core 32 (16-47) | ONNXRuntime Custom Python | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_04.mp3 | 98.6535 | 1.852859 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_01.mp3 | 172.1935 | 2.82095 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_02.mp3 | 265.9735 | 4.546348 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_03.mp3 | 476.9335 | 8.369416 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_07.mp3 | 572.6135 | 11.034598 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_05.mp3 | 614.2335 | 12.897269 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_10.mp3 | 646.8335 | 13.595827 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_08.mp3 | 750.9335 | 14.51475 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_09.mp3 | 959.9535 | 18.883923 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_06.mp3 | 901.0335 | 19.267898 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
|  |  |  |  |  |  | 107.783838 |  |  |  |  |

### Core 32 (16-47) | ONNXRuntime Custom Python | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_04.mp3 | 98.6535 | 2.182182 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_01.mp3 | 172.1935 | 3.202993 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_02.mp3 | 265.9735 | 4.558639 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_03.mp3 | 476.9335 | 9.181242 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_07.mp3 | 572.6135 | 12.301484 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_10.mp3 | 646.8335 | 14.406524 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_05.mp3 | 614.2335 | 14.756465 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_08.mp3 | 750.9335 | 16.446703 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_09.mp3 | 959.9535 | 19.440505 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_06.mp3 | 901.0335 | 20.309493 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
|  |  |  |  |  |  | 116.78623 |  |  |  |  |

### Core 32 (16-47) | OpenAI Whisper Python | default

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 32 | 16-47 | OpenAI Whisper Python | default | video_04.mp3 | 98.6535 | 4.674781 | 0.0 | 0.794393 | 0.0 | 0.801603 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_01.mp3 | 172.1935 | 7.673607 | 0.0 | 2.430108 | 0.0 | 2.297297 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_02.mp3 | 265.9735 | 12.05747 | 0.0 | 1.018939 | 0.0 | 0.985768 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_03.mp3 | 476.9335 | 27.678774 | 0.0 | 0.85759 | 0.0 | 0.87608 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_07.mp3 | 572.6135 | 34.256141 | 0.0 | 1.456767 | 0.0 | 1.458837 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_05.mp3 | 614.2335 | 38.612649 | 0.0 | 0.557841 | 0.0 | 0.555352 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_08.mp3 | 750.9335 | 41.057669 | 0.0 | 1.088452 | 0.0 | 1.088828 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_10.mp3 | 646.8335 | 46.613024 | 0.0 | 0.704527 | 0.0 | 0.661939 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_06.mp3 | 901.0335 | 51.193986 | 0.0 | 0.73161 | 0.0 | 0.702887 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_09.mp3 | 959.9535 | 69.027818 | 0.059686 | 0.787468 | 0.036684 | 0.736345 |
|  |  |  |  |  |  | 332.845919 |  |  |  |  |

### Core 48 (48-95) | ONNXRuntime HF Pipeline | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_04.mp3 | 98.6535 | 6.396302 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_01.mp3 | 172.1935 | 8.883686 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_02.mp3 | 265.9735 | 16.067277 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_03.mp3 | 476.9335 | 25.736081 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_07.mp3 | 572.6135 | 40.558157 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_08.mp3 | 750.9335 | 50.173812 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_10.mp3 | 646.8335 | 50.427323 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_05.mp3 | 614.2335 | 51.414574 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_09.mp3 | 959.9535 | 60.975272 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_06.mp3 | 901.0335 | 70.023034 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
|  |  |  |  |  |  | 380.655518 |  |  |  |  |

### Core 48 (48-95) | ONNXRuntime HF Pipeline | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_04.mp3 | 98.6535 | 6.238503 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_01.mp3 | 172.1935 | 7.750854 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_02.mp3 | 265.9735 | 15.856302 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_03.mp3 | 476.9335 | 23.719246 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_07.mp3 | 572.6135 | 37.732139 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_10.mp3 | 646.8335 | 48.952397 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_08.mp3 | 750.9335 | 50.814896 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_05.mp3 | 614.2335 | 51.512596 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_09.mp3 | 959.9535 | 58.460842 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_06.mp3 | 901.0335 | 63.317519 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
|  |  |  |  |  |  | 364.355294 |  |  |  |  |

### Core 48 (48-95) | ONNXRuntime Custom Python | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_04.mp3 | 98.6535 | 1.552254 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_01.mp3 | 172.1935 | 2.283516 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_02.mp3 | 265.9735 | 3.851381 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_03.mp3 | 476.9335 | 7.611678 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_07.mp3 | 572.6135 | 9.683384 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_10.mp3 | 646.8335 | 11.597896 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_05.mp3 | 614.2335 | 11.666872 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_08.mp3 | 750.9335 | 12.706098 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_09.mp3 | 959.9535 | 15.972753 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_06.mp3 | 901.0335 | 16.183059 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
|  |  |  |  |  |  | 93.108891 |  |  |  |  |

### Core 48 (48-95) | ONNXRuntime Custom Python | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_04.mp3 | 98.6535 | 1.987676 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_01.mp3 | 172.1935 | 2.506147 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_02.mp3 | 265.9735 | 3.997609 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_03.mp3 | 476.9335 | 7.701969 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_07.mp3 | 572.6135 | 10.669722 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_05.mp3 | 614.2335 | 12.928312 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_08.mp3 | 750.9335 | 13.617229 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_10.mp3 | 646.8335 | 13.905 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_06.mp3 | 901.0335 | 17.841871 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_09.mp3 | 959.9535 | 18.218042 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
|  |  |  |  |  |  | 103.373577 |  |  |  |  |

### Core 48 (48-95) | OpenAI Whisper Python | default

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 48 | 48-95 | OpenAI Whisper Python | default | video_04.mp3 | 98.6535 | 4.699148 | 0.0 | 0.794393 | 0.0 | 0.801603 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_01.mp3 | 172.1935 | 7.698744 | 0.0 | 2.430108 | 0.0 | 2.297297 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_02.mp3 | 265.9735 | 12.344417 | 0.0 | 1.018939 | 0.0 | 0.985768 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_03.mp3 | 476.9335 | 28.154395 | 0.0 | 0.85759 | 0.0 | 0.87608 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_07.mp3 | 572.6135 | 31.764308 | 0.0 | 1.456767 | 0.0 | 1.458837 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_05.mp3 | 614.2335 | 38.248184 | 0.0 | 0.557841 | 0.0 | 0.555352 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_08.mp3 | 750.9335 | 41.072238 | 0.0 | 1.088452 | 0.0 | 1.088828 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_10.mp3 | 646.8335 | 46.739328 | 0.0 | 0.704527 | 0.0 | 0.661939 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_06.mp3 | 901.0335 | 52.224581 | 0.0 | 0.73161 | 0.0 | 0.702887 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_09.mp3 | 959.9535 | 59.711766 | 0.041477 | 0.772227 | 0.023163 | 0.719682 |
|  |  |  |  |  |  | 322.657109 |  |  |  |  |

### Core 65 (96-160) | ONNXRuntime HF Pipeline | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_04.mp3 | 98.6535 | 6.457666 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_01.mp3 | 172.1935 | 8.519411 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_02.mp3 | 265.9735 | 15.277815 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_03.mp3 | 476.9335 | 25.492519 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_07.mp3 | 572.6135 | 39.72305 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_08.mp3 | 750.9335 | 48.940231 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_10.mp3 | 646.8335 | 51.173264 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_05.mp3 | 614.2335 | 52.251952 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_09.mp3 | 959.9535 | 63.970536 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_06.mp3 | 901.0335 | 71.236327 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
|  |  |  |  |  |  | 383.042771 |  |  |  |  |

### Core 65 (96-160) | ONNXRuntime HF Pipeline | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_04.mp3 | 98.6535 | 6.727094 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_01.mp3 | 172.1935 | 10.073099 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_02.mp3 | 265.9735 | 16.200175 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_03.mp3 | 476.9335 | 23.881321 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_07.mp3 | 572.6135 | 39.113212 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_10.mp3 | 646.8335 | 49.820179 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_05.mp3 | 614.2335 | 50.18625 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_08.mp3 | 750.9335 | 52.371082 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_09.mp3 | 959.9535 | 63.231876 | 0.48609 | 0.217612 | 0.463371 | 0.181263 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_06.mp3 | 901.0335 | 70.504703 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
|  |  |  |  |  |  | 382.108991 |  |  |  |  |

### Core 65 (96-160) | ONNXRuntime Custom Python | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_04.mp3 | 98.6535 | 1.619825 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_01.mp3 | 172.1935 | 2.662556 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_02.mp3 | 265.9735 | 4.563061 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_03.mp3 | 476.9335 | 7.597887 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_05.mp3 | 614.2335 | 10.874409 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_07.mp3 | 572.6135 | 10.919571 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_10.mp3 | 646.8335 | 11.180362 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_08.mp3 | 750.9335 | 12.929883 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_09.mp3 | 959.9535 | 15.572858 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_06.mp3 | 901.0335 | 16.594575 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
|  |  |  |  |  |  | 94.514987 |  |  |  |  |

### Core 65 (96-160) | ONNXRuntime Custom Python | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_04.mp3 | 98.6535 | 1.573303 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_01.mp3 | 172.1935 | 2.535282 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_02.mp3 | 265.9735 | 4.213886 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_03.mp3 | 476.9335 | 7.265976 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_07.mp3 | 572.6135 | 9.925631 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_05.mp3 | 614.2335 | 11.458897 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_10.mp3 | 646.8335 | 12.398351 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_08.mp3 | 750.9335 | 13.862674 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_09.mp3 | 959.9535 | 16.416626 | 0.151239 | 0.679932 | 0.115704 | 0.646362 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_06.mp3 | 901.0335 | 17.697625 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
|  |  |  |  |  |  | 97.348251 |  |  |  |  |

### Core 65 (96-160) | OpenAI Whisper Python | default

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 65 | 96-160 | OpenAI Whisper Python | default | video_04.mp3 | 98.6535 | 4.642089 | 0.0 | 0.794393 | 0.0 | 0.801603 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_01.mp3 | 172.1935 | 7.684073 | 0.0 | 2.430108 | 0.0 | 2.297297 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_02.mp3 | 265.9735 | 12.288421 | 0.0 | 1.018939 | 0.0 | 0.985768 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_03.mp3 | 476.9335 | 28.285279 | 0.0 | 0.85759 | 0.0 | 0.87608 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_07.mp3 | 572.6135 | 31.74668 | 0.0 | 1.456767 | 0.0 | 1.458837 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_05.mp3 | 614.2335 | 38.4455 | 0.0 | 0.557841 | 0.0 | 0.555352 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_08.mp3 | 750.9335 | 41.223581 | 0.0 | 1.088452 | 0.0 | 1.088828 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_10.mp3 | 646.8335 | 45.965601 | 0.0 | 0.704527 | 0.0 | 0.661939 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_06.mp3 | 901.0335 | 52.429597 | 0.0 | 0.73161 | 0.0 | 0.702887 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_09.mp3 | 959.9535 | 56.730129 | 0.011634 | 0.752752 | 0.005541 | 0.710424 |
|  |  |  |  |  |  | 319.44095 |  |  |  |  |

## Notes

- Table sections are sorted by cores ascending, then decoding, then implementation.
- `core_binding` shows the exact CPU affinity used for each benchmark row.
- Rows inside each table are sorted by lowest `End-to-End (s)`, then lowest WER/CER.
- Per-file tables include HF+Custom (greedy/beam) rows only.
- Per-file tables list individual files only (no total row).
- Latency tables include all selected implementations and all selected audio files.
- Latency total rows keep only the `End-to-End (s)` value (other cells are blank).
- WER/CER table columns are reported against both baselines (OpenAI default and HF Beam5).
- Legacy `wer`/`cer` fields map to WER/CER vs HF beam baseline (num_beams=5).
