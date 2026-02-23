# Whisper ONNX Benchmark Report

- Run ID: `run_2_20260222_093008`
- Audio Dir: `audio`
- ONNX Dir: `models/whisper-base-with-past`
- PyTorch Dir: `models/openai-whisper-base-pytorch`
- Processor Source: `models/whisper-base-with-past`
- Implementations: `ONNXRuntime HF Pipeline, ONNXRuntime Custom Python, OpenAI Whisper Python`
- Dry Run: `False`
- Stride (left,right): `(0.0, 0.0)`
- Benchmark Total Time (s): `10367.39398`

## Baseline Definitions

- Primary baseline (top priority): `ONNXRuntime HF Pipeline beam transcription per file (num_beams=5)`.
- Secondary comparison baseline: `OpenAI Whisper Python default transcription per file`.

## Summary

| Cores | Core Binding | Implementation | Decoding | Beam Size | Avg Time (s) | P95 Time (s) | Avg WER vs HF Beam5 | Avg CER vs HF Beam5 | Avg WER vs OpenAI | Avg CER vs OpenAI | RAM Usage (MB) |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | 1 | 42.021855 | 74.17095 | 0.398993 | 0.329059 | 0.494354 | 0.483013 | 3661.207 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | 1 | 12.049212 | 21.003427 | 0.960138 | 0.896004 | 0.135557 | 0.114645 | 5177.043 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | 5 | 60.68395 | 104.475059 | 0.0 | 0.0 | 0.492912 | 0.482959 | 5177.043 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | 5 | 50.172206 | 85.552594 | 0.887905 | 0.880581 | 0.100772 | 0.080397 | 5217.355 |
| 16 | 0-15 | OpenAI Whisper Python | default | 0 | 43.427495 | 72.929811 | 1.038959 | 1.013772 | 0.003756 | 0.002187 | 5217.355 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | 1 | 38.656881 | 70.262452 | 0.398993 | 0.329059 | 0.494354 | 0.483013 | 5217.355 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | 1 | 11.032817 | 19.535402 | 0.960138 | 0.896004 | 0.135557 | 0.114645 | 5217.355 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | 5 | 54.132641 | 91.818878 | 0.0 | 0.0 | 0.492912 | 0.482959 | 5217.355 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | 5 | 41.916167 | 70.256099 | 0.887905 | 0.880581 | 0.100772 | 0.080397 | 5220.195 |
| 32 | 16-47 | OpenAI Whisper Python | default | 0 | 47.763141 | 93.713639 | 1.043616 | 1.016697 | 0.007056 | 0.004943 | 5220.195 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | 1 | 39.049625 | 67.412545 | 0.398993 | 0.329059 | 0.494354 | 0.483013 | 5220.195 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | 1 | 10.485786 | 17.792076 | 0.960138 | 0.896004 | 0.135557 | 0.114645 | 5220.195 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | 5 | 55.99382 | 94.2327 | 0.0 | 0.0 | 0.492912 | 0.482959 | 5220.195 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | 5 | 36.518523 | 61.989999 | 0.887905 | 0.880581 | 0.100772 | 0.080397 | 5284.258 |
| 48 | 48-95 | OpenAI Whisper Python | default | 0 | 43.239059 | 74.491246 | 1.035403 | 1.011198 | 0.004619 | 0.003157 | 5284.258 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | 1 | 38.989472 | 67.487497 | 0.398993 | 0.329059 | 0.494354 | 0.483013 | 5284.258 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | 1 | 9.445344 | 15.632924 | 0.960138 | 0.896004 | 0.135557 | 0.114645 | 5284.258 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | 5 | 56.565454 | 95.23918 | 0.0 | 0.0 | 0.492912 | 0.482959 | 5284.258 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | 5 | 33.775199 | 58.814451 | 0.887905 | 0.880581 | 0.100772 | 0.080397 | 5284.258 |
| 65 | 96-160 | OpenAI Whisper Python | default | 0 | 43.649215 | 76.687073 | 1.040991 | 1.014587 | 0.005279 | 0.002834 | 5284.258 |

## Per-File Accuracy Tables

### Core 16 (0-15)

| Core | Core Binding | File | Duration (s) | Implementation | Decoding | Beam Size | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 16 | 0-15 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | greedy | 1 | 1.956217 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 16 | 0-15 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | greedy | 1 | 3.110907 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 16 | 0-15 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | greedy | 1 | 5.019459 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 16 | 0-15 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | greedy | 1 | 7.640937 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 16 | 0-15 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | beam | 5 | 7.811109 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 16 | 0-15 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | greedy | 1 | 9.107976 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 16 | 0-15 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | beam | 5 | 9.160049 | 0.447368 | 0.0 | 0.445434 | 0.0 |
| 16 | 0-15 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | greedy | 1 | 10.770151 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 16 | 0-15 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | beam | 5 | 11.544315 | 0.235849 | 1.774194 | 0.214376 | 1.64657 |
| 16 | 0-15 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | greedy | 1 | 12.527846 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 16 | 0-15 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | beam | 5 | 14.864262 | 0.710692 | 0.0 | 0.696721 | 0.0 |
| 16 | 0-15 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | greedy | 1 | 15.074089 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 16 | 0-15 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | greedy | 1 | 15.791126 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 16 | 0-15 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | greedy | 1 | 16.030272 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 16 | 0-15 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | beam | 5 | 18.78262 | 0.059846 | 0.981061 | 0.04 | 0.953558 |
| 16 | 0-15 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | greedy | 1 | 19.086411 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 16 | 0-15 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | greedy | 1 | 20.273973 | 0.152284 | 0.679932 | 0.118822 | 0.646362 |
| 16 | 0-15 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | greedy | 1 | 21.600254 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
| 16 | 0-15 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | beam | 5 | 23.912209 | 0.519305 | 0.0 | 0.501333 | 0.0 |
| 16 | 0-15 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 26.354012 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 16 | 0-15 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | beam | 5 | 39.795898 | 0.144804 | 0.636933 | 0.131055 | 0.660533 |
| 16 | 0-15 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | greedy | 1 | 44.708471 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 16 | 0-15 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | beam | 5 | 46.759289 | 0.46678 | 0.0 | 0.468945 | 0.0 |
| 16 | 0-15 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | beam | 5 | 51.167715 | 0.053447 | 1.385338 | 0.041229 | 1.39446 |
| 16 | 0-15 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | greedy | 1 | 53.140079 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 16 | 0-15 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 53.939445 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 16 | 0-15 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | greedy | 1 | 57.19047 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 16 | 0-15 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | beam | 5 | 59.9232 | 0.60031 | 0.0 | 0.595193 | 0.0 |
| 16 | 0-15 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | beam | 5 | 64.591235 | 0.07043 | 0.479006 | 0.055856 | 0.49419 |
| 16 | 0-15 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | beam | 5 | 65.250937 | 0.074671 | 1.020885 | 0.047538 | 1.047411 |
| 16 | 0-15 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | greedy | 1 | 68.927672 | 0.474619 | 0.217612 | 0.452639 | 0.181263 |
| 16 | 0-15 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | beam | 5 | 72.717921 | 0.112704 | 0.577778 | 0.084264 | 0.563633 |
| 16 | 0-15 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | beam | 5 | 76.761145 | 0.529271 | 0.0 | 0.523311 | 0.0 |
| 16 | 0-15 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | beam | 5 | 78.073199 | 0.36389 | 0.0 | 0.359699 | 0.0 |
| 16 | 0-15 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | greedy | 1 | 78.460906 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
| 16 | 0-15 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | beam | 5 | 79.80575 | 0.131472 | 0.635902 | 0.101975 | 0.633586 |
| 16 | 0-15 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | beam | 5 | 89.899742 | 0.423134 | 0.0 | 0.403313 | 0.0 |
| 16 | 0-15 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | beam | 5 | 90.254557 | 0.098183 | 0.621604 | 0.079883 | 0.618286 |
| 16 | 0-15 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | beam | 5 | 96.424631 | 0.441624 | 0.0 | 0.420841 | 0.0 |
| 16 | 0-15 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | beam | 5 | 111.061772 | 0.426749 | 0.0 | 0.414804 | 0.0 |

### Core 32 (16-47)

| Core | Core Binding | File | Duration (s) | Implementation | Decoding | Beam Size | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 32 | 16-47 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | greedy | 1 | 1.757351 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 32 | 16-47 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | greedy | 1 | 2.663517 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 32 | 16-47 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | greedy | 1 | 4.449873 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 32 | 16-47 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | greedy | 1 | 6.273564 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 32 | 16-47 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | beam | 5 | 7.13044 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 32 | 16-47 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | greedy | 1 | 8.073974 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 32 | 16-47 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | greedy | 1 | 8.985947 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 32 | 16-47 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | beam | 5 | 9.249205 | 0.447368 | 0.0 | 0.445434 | 0.0 |
| 32 | 16-47 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | beam | 5 | 10.077399 | 0.235849 | 1.774194 | 0.214376 | 1.64657 |
| 32 | 16-47 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | greedy | 1 | 11.065214 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 32 | 16-47 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | greedy | 1 | 13.925076 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 32 | 16-47 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | beam | 5 | 14.042471 | 0.710692 | 0.0 | 0.696721 | 0.0 |
| 32 | 16-47 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | greedy | 1 | 14.308221 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 32 | 16-47 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | greedy | 1 | 15.177529 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 32 | 16-47 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | beam | 5 | 16.013793 | 0.059846 | 0.981061 | 0.04 | 0.953558 |
| 32 | 16-47 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | greedy | 1 | 16.423487 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 32 | 16-47 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | greedy | 1 | 18.63677 | 0.152284 | 0.679932 | 0.118822 | 0.646362 |
| 32 | 16-47 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | beam | 5 | 20.200826 | 0.519305 | 0.0 | 0.501333 | 0.0 |
| 32 | 16-47 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | greedy | 1 | 20.270647 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
| 32 | 16-47 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 23.83668 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 32 | 16-47 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | beam | 5 | 33.902018 | 0.144804 | 0.636933 | 0.131055 | 0.660533 |
| 32 | 16-47 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | greedy | 1 | 39.225844 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 32 | 16-47 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | beam | 5 | 41.898315 | 0.053447 | 1.385338 | 0.041229 | 1.39446 |
| 32 | 16-47 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | beam | 5 | 45.278007 | 0.46678 | 0.0 | 0.468945 | 0.0 |
| 32 | 16-47 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | greedy | 1 | 49.821847 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 32 | 16-47 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 50.379006 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 32 | 16-47 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | greedy | 1 | 51.626268 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 32 | 16-47 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | beam | 5 | 53.259105 | 0.074671 | 1.020885 | 0.047538 | 1.047411 |
| 32 | 16-47 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | beam | 5 | 54.386377 | 0.60031 | 0.0 | 0.595193 | 0.0 |
| 32 | 16-47 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | beam | 5 | 55.260508 | 0.07043 | 0.479006 | 0.055856 | 0.49419 |
| 32 | 16-47 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | beam | 5 | 61.818719 | 0.112704 | 0.577778 | 0.084264 | 0.563633 |
| 32 | 16-47 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | beam | 5 | 66.135317 | 0.529271 | 0.0 | 0.523311 | 0.0 |
| 32 | 16-47 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | beam | 5 | 66.346541 | 0.131472 | 0.635902 | 0.101975 | 0.633586 |
| 32 | 16-47 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | greedy | 1 | 67.354413 | 0.474619 | 0.217612 | 0.452639 | 0.181263 |
| 32 | 16-47 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | beam | 5 | 69.381806 | 0.36389 | 0.0 | 0.359699 | 0.0 |
| 32 | 16-47 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | greedy | 1 | 72.641758 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
| 32 | 16-47 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | beam | 5 | 73.454828 | 0.098183 | 0.621604 | 0.079883 | 0.618286 |
| 32 | 16-47 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | beam | 5 | 80.237209 | 0.423134 | 0.0 | 0.403313 | 0.0 |
| 32 | 16-47 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | beam | 5 | 85.094772 | 0.441624 | 0.0 | 0.420841 | 0.0 |
| 32 | 16-47 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | beam | 5 | 97.320418 | 0.426749 | 0.0 | 0.414804 | 0.0 |

### Core 48 (48-95)

| Core | Core Binding | File | Duration (s) | Implementation | Decoding | Beam Size | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 48 | 48-95 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | greedy | 1 | 1.637443 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 48 | 48-95 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | greedy | 1 | 2.668068 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 48 | 48-95 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | greedy | 1 | 4.385584 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 48 | 48-95 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | beam | 5 | 5.815798 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 48 | 48-95 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | greedy | 1 | 6.388156 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 48 | 48-95 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | greedy | 1 | 8.707084 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 48 | 48-95 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | beam | 5 | 9.161502 | 0.447368 | 0.0 | 0.445434 | 0.0 |
| 48 | 48-95 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | greedy | 1 | 9.238588 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 48 | 48-95 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | beam | 5 | 9.283162 | 0.235849 | 1.774194 | 0.214376 | 1.64657 |
| 48 | 48-95 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | greedy | 1 | 10.735023 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 48 | 48-95 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | greedy | 1 | 13.344095 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 48 | 48-95 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | greedy | 1 | 13.954777 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 48 | 48-95 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | greedy | 1 | 14.003155 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 48 | 48-95 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | beam | 5 | 14.413562 | 0.059846 | 0.981061 | 0.04 | 0.953558 |
| 48 | 48-95 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | beam | 5 | 15.150883 | 0.710692 | 0.0 | 0.696721 | 0.0 |
| 48 | 48-95 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | greedy | 1 | 16.903733 | 0.152284 | 0.679932 | 0.118822 | 0.646362 |
| 48 | 48-95 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | greedy | 1 | 17.000178 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 48 | 48-95 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | greedy | 1 | 18.518901 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
| 48 | 48-95 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | beam | 5 | 21.190969 | 0.519305 | 0.0 | 0.501333 | 0.0 |
| 48 | 48-95 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 26.064202 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 48 | 48-95 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | beam | 5 | 29.11132 | 0.144804 | 0.636933 | 0.131055 | 0.660533 |
| 48 | 48-95 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | beam | 5 | 36.210466 | 0.053447 | 1.385338 | 0.041229 | 1.39446 |
| 48 | 48-95 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | greedy | 1 | 39.827348 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 48 | 48-95 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | beam | 5 | 47.08592 | 0.07043 | 0.479006 | 0.055856 | 0.49419 |
| 48 | 48-95 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | beam | 5 | 47.135378 | 0.46678 | 0.0 | 0.468945 | 0.0 |
| 48 | 48-95 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | beam | 5 | 47.39837 | 0.074671 | 1.020885 | 0.047538 | 1.047411 |
| 48 | 48-95 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 51.564623 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 48 | 48-95 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | greedy | 1 | 52.018707 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 48 | 48-95 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | beam | 5 | 52.475993 | 0.112704 | 0.577778 | 0.084264 | 0.563633 |
| 48 | 48-95 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | greedy | 1 | 54.075158 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 48 | 48-95 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | beam | 5 | 55.157573 | 0.60031 | 0.0 | 0.595193 | 0.0 |
| 48 | 48-95 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | beam | 5 | 58.748515 | 0.131472 | 0.635902 | 0.101975 | 0.633586 |
| 48 | 48-95 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | greedy | 1 | 64.630657 | 0.474619 | 0.217612 | 0.452639 | 0.181263 |
| 48 | 48-95 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | beam | 5 | 64.642122 | 0.098183 | 0.621604 | 0.079883 | 0.618286 |
| 48 | 48-95 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | greedy | 1 | 69.688635 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
| 48 | 48-95 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | beam | 5 | 71.280268 | 0.36389 | 0.0 | 0.359699 | 0.0 |
| 48 | 48-95 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | beam | 5 | 72.548101 | 0.529271 | 0.0 | 0.523311 | 0.0 |
| 48 | 48-95 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | beam | 5 | 81.23252 | 0.423134 | 0.0 | 0.403313 | 0.0 |
| 48 | 48-95 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | beam | 5 | 86.618547 | 0.441624 | 0.0 | 0.420841 | 0.0 |
| 48 | 48-95 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | beam | 5 | 100.462461 | 0.426749 | 0.0 | 0.414804 | 0.0 |

### Core 65 (96-160)

| Core | Core Binding | File | Duration (s) | Implementation | Decoding | Beam Size | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 65 | 96-160 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | greedy | 1 | 1.63696 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 65 | 96-160 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | greedy | 1 | 2.884822 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 65 | 96-160 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | greedy | 1 | 4.331291 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 65 | 96-160 | video_04.mp3 | 98.6535 | ONNXRuntime Custom Python | beam | 5 | 5.03153 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 65 | 96-160 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | greedy | 1 | 6.496264 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 65 | 96-160 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | greedy | 1 | 8.072052 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 65 | 96-160 | video_01.mp3 | 172.1935 | ONNXRuntime Custom Python | beam | 5 | 8.516695 | 0.235849 | 1.774194 | 0.214376 | 1.64657 |
| 65 | 96-160 | video_04.mp3 | 98.6535 | ONNXRuntime HF Pipeline | beam | 5 | 8.64186 | 0.447368 | 0.0 | 0.445434 | 0.0 |
| 65 | 96-160 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | greedy | 1 | 9.36766 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 65 | 96-160 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | greedy | 1 | 10.461827 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 65 | 96-160 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | greedy | 1 | 11.591973 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 65 | 96-160 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | greedy | 1 | 11.668526 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 65 | 96-160 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | greedy | 1 | 12.705424 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 65 | 96-160 | video_02.mp3 | 265.9735 | ONNXRuntime Custom Python | beam | 5 | 12.853945 | 0.059846 | 0.981061 | 0.04 | 0.953558 |
| 65 | 96-160 | video_01.mp3 | 172.1935 | ONNXRuntime HF Pipeline | beam | 5 | 14.513784 | 0.710692 | 0.0 | 0.696721 | 0.0 |
| 65 | 96-160 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | greedy | 1 | 14.723851 | 0.152284 | 0.679932 | 0.118822 | 0.646362 |
| 65 | 96-160 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | greedy | 1 | 16.376711 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
| 65 | 96-160 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | greedy | 1 | 16.41405 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 65 | 96-160 | video_02.mp3 | 265.9735 | ONNXRuntime HF Pipeline | beam | 5 | 19.908403 | 0.519305 | 0.0 | 0.501333 | 0.0 |
| 65 | 96-160 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 25.789851 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 65 | 96-160 | video_03.mp3 | 476.9335 | ONNXRuntime Custom Python | beam | 5 | 26.014881 | 0.144804 | 0.636933 | 0.131055 | 0.660533 |
| 65 | 96-160 | video_07.mp3 | 572.6135 | ONNXRuntime Custom Python | beam | 5 | 35.83254 | 0.053447 | 1.385338 | 0.041229 | 1.39446 |
| 65 | 96-160 | video_05.mp3 | 614.2335 | ONNXRuntime Custom Python | beam | 5 | 40.617912 | 0.07043 | 0.479006 | 0.055856 | 0.49419 |
| 65 | 96-160 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | greedy | 1 | 41.238095 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 65 | 96-160 | video_08.mp3 | 750.9335 | ONNXRuntime Custom Python | beam | 5 | 42.102657 | 0.074671 | 1.020885 | 0.047538 | 1.047411 |
| 65 | 96-160 | video_03.mp3 | 476.9335 | ONNXRuntime HF Pipeline | beam | 5 | 46.31432 | 0.46678 | 0.0 | 0.468945 | 0.0 |
| 65 | 96-160 | video_10.mp3 | 646.8335 | ONNXRuntime Custom Python | beam | 5 | 49.434442 | 0.112704 | 0.577778 | 0.084264 | 0.563633 |
| 65 | 96-160 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | greedy | 1 | 50.022394 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 65 | 96-160 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | greedy | 1 | 53.128694 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 65 | 96-160 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | greedy | 1 | 53.249589 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 65 | 96-160 | video_07.mp3 | 572.6135 | ONNXRuntime HF Pipeline | beam | 5 | 54.566747 | 0.60031 | 0.0 | 0.595193 | 0.0 |
| 65 | 96-160 | video_09.mp3 | 959.9535 | ONNXRuntime Custom Python | beam | 5 | 57.266113 | 0.131472 | 0.635902 | 0.101975 | 0.633586 |
| 65 | 96-160 | video_06.mp3 | 901.0335 | ONNXRuntime Custom Python | beam | 5 | 60.081273 | 0.098183 | 0.621604 | 0.079883 | 0.618286 |
| 65 | 96-160 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | greedy | 1 | 63.159694 | 0.474619 | 0.217612 | 0.452639 | 0.181263 |
| 65 | 96-160 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | greedy | 1 | 71.028427 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
| 65 | 96-160 | video_08.mp3 | 750.9335 | ONNXRuntime HF Pipeline | beam | 5 | 72.528926 | 0.529271 | 0.0 | 0.523311 | 0.0 |
| 65 | 96-160 | video_05.mp3 | 614.2335 | ONNXRuntime HF Pipeline | beam | 5 | 75.321828 | 0.36389 | 0.0 | 0.359699 | 0.0 |
| 65 | 96-160 | video_10.mp3 | 646.8335 | ONNXRuntime HF Pipeline | beam | 5 | 84.558993 | 0.423134 | 0.0 | 0.403313 | 0.0 |
| 65 | 96-160 | video_09.mp3 | 959.9535 | ONNXRuntime HF Pipeline | beam | 5 | 88.756444 | 0.441624 | 0.0 | 0.420841 | 0.0 |
| 65 | 96-160 | video_06.mp3 | 901.0335 | ONNXRuntime HF Pipeline | beam | 5 | 100.543236 | 0.426749 | 0.0 | 0.414804 | 0.0 |

## Latency by Core and Implementation

### Core 16 (0-15) | ONNXRuntime HF Pipeline | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_04.mp3 | 98.6535 | 7.640937 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_01.mp3 | 172.1935 | 10.770151 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_02.mp3 | 265.9735 | 19.086411 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_03.mp3 | 476.9335 | 26.354012 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_07.mp3 | 572.6135 | 44.708471 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_10.mp3 | 646.8335 | 53.140079 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_08.mp3 | 750.9335 | 53.939445 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_05.mp3 | 614.2335 | 57.19047 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_09.mp3 | 959.9535 | 68.927672 | 0.474619 | 0.217612 | 0.452639 | 0.181263 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | video_06.mp3 | 901.0335 | 78.460906 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
|  |  |  |  |  |  | 420.218554 |  |  |  |  |

### Core 16 (0-15) | ONNXRuntime HF Pipeline | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_04.mp3 | 98.6535 | 9.160049 | 0.447368 | 0.0 | 0.445434 | 0.0 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_01.mp3 | 172.1935 | 14.864262 | 0.710692 | 0.0 | 0.696721 | 0.0 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_02.mp3 | 265.9735 | 23.912209 | 0.519305 | 0.0 | 0.501333 | 0.0 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_03.mp3 | 476.9335 | 46.759289 | 0.46678 | 0.0 | 0.468945 | 0.0 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_07.mp3 | 572.6135 | 59.9232 | 0.60031 | 0.0 | 0.595193 | 0.0 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_08.mp3 | 750.9335 | 76.761145 | 0.529271 | 0.0 | 0.523311 | 0.0 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_05.mp3 | 614.2335 | 78.073199 | 0.36389 | 0.0 | 0.359699 | 0.0 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_10.mp3 | 646.8335 | 89.899742 | 0.423134 | 0.0 | 0.403313 | 0.0 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_09.mp3 | 959.9535 | 96.424631 | 0.441624 | 0.0 | 0.420841 | 0.0 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | video_06.mp3 | 901.0335 | 111.061772 | 0.426749 | 0.0 | 0.414804 | 0.0 |
|  |  |  |  |  |  | 606.839498 |  |  |  |  |

### Core 16 (0-15) | ONNXRuntime Custom Python | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_04.mp3 | 98.6535 | 1.956217 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_01.mp3 | 172.1935 | 3.110907 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_02.mp3 | 265.9735 | 5.019459 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_03.mp3 | 476.9335 | 9.107976 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_07.mp3 | 572.6135 | 12.527846 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_05.mp3 | 614.2335 | 15.074089 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_10.mp3 | 646.8335 | 15.791126 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_08.mp3 | 750.9335 | 16.030272 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_09.mp3 | 959.9535 | 20.273973 | 0.152284 | 0.679932 | 0.118822 | 0.646362 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | video_06.mp3 | 901.0335 | 21.600254 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
|  |  |  |  |  |  | 120.492119 |  |  |  |  |

### Core 16 (0-15) | ONNXRuntime Custom Python | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_04.mp3 | 98.6535 | 7.811109 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_01.mp3 | 172.1935 | 11.544315 | 0.235849 | 1.774194 | 0.214376 | 1.64657 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_02.mp3 | 265.9735 | 18.78262 | 0.059846 | 0.981061 | 0.04 | 0.953558 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_03.mp3 | 476.9335 | 39.795898 | 0.144804 | 0.636933 | 0.131055 | 0.660533 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_07.mp3 | 572.6135 | 51.167715 | 0.053447 | 1.385338 | 0.041229 | 1.39446 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_05.mp3 | 614.2335 | 64.591235 | 0.07043 | 0.479006 | 0.055856 | 0.49419 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_08.mp3 | 750.9335 | 65.250937 | 0.074671 | 1.020885 | 0.047538 | 1.047411 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_10.mp3 | 646.8335 | 72.717921 | 0.112704 | 0.577778 | 0.084264 | 0.563633 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_09.mp3 | 959.9535 | 79.80575 | 0.131472 | 0.635902 | 0.101975 | 0.633586 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | video_06.mp3 | 901.0335 | 90.254557 | 0.098183 | 0.621604 | 0.079883 | 0.618286 |
|  |  |  |  |  |  | 501.722057 |  |  |  |  |

### Core 16 (0-15) | OpenAI Whisper Python | default

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 16 | 0-15 | OpenAI Whisper Python | default | video_04.mp3 | 98.6535 | 6.349869 | 0.0 | 0.794393 | 0.0 | 0.801603 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_01.mp3 | 172.1935 | 10.873121 | 0.0 | 2.430108 | 0.0 | 2.297297 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_02.mp3 | 265.9735 | 16.81205 | 0.0 | 1.018939 | 0.0 | 0.985768 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_03.mp3 | 476.9335 | 38.507527 | 0.0 | 0.85759 | 0.0 | 0.87608 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_07.mp3 | 572.6135 | 43.942662 | 0.0 | 1.456767 | 0.0 | 1.458837 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_05.mp3 | 614.2335 | 53.083551 | 0.0 | 0.557841 | 0.0 | 0.555352 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_08.mp3 | 750.9335 | 55.900688 | 0.0 | 1.088452 | 0.0 | 1.088828 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_10.mp3 | 646.8335 | 63.041757 | 0.0 | 0.704527 | 0.0 | 0.661939 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_06.mp3 | 901.0335 | 72.402399 | 0.0 | 0.73161 | 0.0 | 0.702887 |
| 16 | 0-15 | OpenAI Whisper Python | default | video_09.mp3 | 959.9535 | 73.36133 | 0.037563 | 0.749365 | 0.021868 | 0.709128 |
|  |  |  |  |  |  | 434.274954 |  |  |  |  |

### Core 32 (16-47) | ONNXRuntime HF Pipeline | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_04.mp3 | 98.6535 | 6.273564 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_01.mp3 | 172.1935 | 8.985947 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_02.mp3 | 265.9735 | 16.423487 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_03.mp3 | 476.9335 | 23.83668 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_07.mp3 | 572.6135 | 39.225844 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_10.mp3 | 646.8335 | 49.821847 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_08.mp3 | 750.9335 | 50.379006 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_05.mp3 | 614.2335 | 51.626268 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_09.mp3 | 959.9535 | 67.354413 | 0.474619 | 0.217612 | 0.452639 | 0.181263 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | video_06.mp3 | 901.0335 | 72.641758 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
|  |  |  |  |  |  | 386.568814 |  |  |  |  |

### Core 32 (16-47) | ONNXRuntime HF Pipeline | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_04.mp3 | 98.6535 | 9.249205 | 0.447368 | 0.0 | 0.445434 | 0.0 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_01.mp3 | 172.1935 | 14.042471 | 0.710692 | 0.0 | 0.696721 | 0.0 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_02.mp3 | 265.9735 | 20.200826 | 0.519305 | 0.0 | 0.501333 | 0.0 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_03.mp3 | 476.9335 | 45.278007 | 0.46678 | 0.0 | 0.468945 | 0.0 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_07.mp3 | 572.6135 | 54.386377 | 0.60031 | 0.0 | 0.595193 | 0.0 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_08.mp3 | 750.9335 | 66.135317 | 0.529271 | 0.0 | 0.523311 | 0.0 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_05.mp3 | 614.2335 | 69.381806 | 0.36389 | 0.0 | 0.359699 | 0.0 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_10.mp3 | 646.8335 | 80.237209 | 0.423134 | 0.0 | 0.403313 | 0.0 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_09.mp3 | 959.9535 | 85.094772 | 0.441624 | 0.0 | 0.420841 | 0.0 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | video_06.mp3 | 901.0335 | 97.320418 | 0.426749 | 0.0 | 0.414804 | 0.0 |
|  |  |  |  |  |  | 541.326408 |  |  |  |  |

### Core 32 (16-47) | ONNXRuntime Custom Python | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_04.mp3 | 98.6535 | 1.757351 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_01.mp3 | 172.1935 | 2.663517 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_02.mp3 | 265.9735 | 4.449873 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_03.mp3 | 476.9335 | 8.073974 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_07.mp3 | 572.6135 | 11.065214 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_05.mp3 | 614.2335 | 13.925076 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_10.mp3 | 646.8335 | 14.308221 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_08.mp3 | 750.9335 | 15.177529 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_09.mp3 | 959.9535 | 18.63677 | 0.152284 | 0.679932 | 0.118822 | 0.646362 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | video_06.mp3 | 901.0335 | 20.270647 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
|  |  |  |  |  |  | 110.328172 |  |  |  |  |

### Core 32 (16-47) | ONNXRuntime Custom Python | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_04.mp3 | 98.6535 | 7.13044 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_01.mp3 | 172.1935 | 10.077399 | 0.235849 | 1.774194 | 0.214376 | 1.64657 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_02.mp3 | 265.9735 | 16.013793 | 0.059846 | 0.981061 | 0.04 | 0.953558 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_03.mp3 | 476.9335 | 33.902018 | 0.144804 | 0.636933 | 0.131055 | 0.660533 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_07.mp3 | 572.6135 | 41.898315 | 0.053447 | 1.385338 | 0.041229 | 1.39446 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_08.mp3 | 750.9335 | 53.259105 | 0.074671 | 1.020885 | 0.047538 | 1.047411 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_05.mp3 | 614.2335 | 55.260508 | 0.07043 | 0.479006 | 0.055856 | 0.49419 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_10.mp3 | 646.8335 | 61.818719 | 0.112704 | 0.577778 | 0.084264 | 0.563633 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_09.mp3 | 959.9535 | 66.346541 | 0.131472 | 0.635902 | 0.101975 | 0.633586 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | video_06.mp3 | 901.0335 | 73.454828 | 0.098183 | 0.621604 | 0.079883 | 0.618286 |
|  |  |  |  |  |  | 419.161666 |  |  |  |  |

### Core 32 (16-47) | OpenAI Whisper Python | default

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 32 | 16-47 | OpenAI Whisper Python | default | video_04.mp3 | 98.6535 | 6.547387 | 0.0 | 0.794393 | 0.0 | 0.801603 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_01.mp3 | 172.1935 | 10.698967 | 0.0 | 2.430108 | 0.0 | 2.297297 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_02.mp3 | 265.9735 | 17.133127 | 0.0 | 1.018939 | 0.0 | 0.985768 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_03.mp3 | 476.9335 | 39.626091 | 0.0 | 0.85759 | 0.0 | 0.87608 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_07.mp3 | 572.6135 | 44.269047 | 0.0 | 1.456767 | 0.0 | 1.458837 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_05.mp3 | 614.2335 | 55.380578 | 0.0 | 0.557841 | 0.0 | 0.555352 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_08.mp3 | 750.9335 | 56.530819 | 0.0 | 1.088452 | 0.0 | 1.088828 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_10.mp3 | 646.8335 | 63.783256 | 0.0 | 0.704527 | 0.0 | 0.661939 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_06.mp3 | 901.0335 | 73.005358 | 0.0 | 0.73161 | 0.0 | 0.702887 |
| 32 | 16-47 | OpenAI Whisper Python | default | video_09.mp3 | 959.9535 | 110.656778 | 0.070558 | 0.795936 | 0.049425 | 0.738382 |
|  |  |  |  |  |  | 477.631408 |  |  |  |  |

### Core 48 (48-95) | ONNXRuntime HF Pipeline | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_04.mp3 | 98.6535 | 6.388156 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_01.mp3 | 172.1935 | 9.238588 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_02.mp3 | 265.9735 | 17.000178 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_03.mp3 | 476.9335 | 26.064202 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_07.mp3 | 572.6135 | 39.827348 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_08.mp3 | 750.9335 | 51.564623 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_10.mp3 | 646.8335 | 52.018707 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_05.mp3 | 614.2335 | 54.075158 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_09.mp3 | 959.9535 | 64.630657 | 0.474619 | 0.217612 | 0.452639 | 0.181263 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | greedy | video_06.mp3 | 901.0335 | 69.688635 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
|  |  |  |  |  |  | 390.496252 |  |  |  |  |

### Core 48 (48-95) | ONNXRuntime HF Pipeline | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_04.mp3 | 98.6535 | 9.161502 | 0.447368 | 0.0 | 0.445434 | 0.0 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_01.mp3 | 172.1935 | 15.150883 | 0.710692 | 0.0 | 0.696721 | 0.0 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_02.mp3 | 265.9735 | 21.190969 | 0.519305 | 0.0 | 0.501333 | 0.0 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_03.mp3 | 476.9335 | 47.135378 | 0.46678 | 0.0 | 0.468945 | 0.0 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_07.mp3 | 572.6135 | 55.157573 | 0.60031 | 0.0 | 0.595193 | 0.0 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_05.mp3 | 614.2335 | 71.280268 | 0.36389 | 0.0 | 0.359699 | 0.0 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_08.mp3 | 750.9335 | 72.548101 | 0.529271 | 0.0 | 0.523311 | 0.0 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_10.mp3 | 646.8335 | 81.23252 | 0.423134 | 0.0 | 0.403313 | 0.0 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_09.mp3 | 959.9535 | 86.618547 | 0.441624 | 0.0 | 0.420841 | 0.0 |
| 48 | 48-95 | ONNXRuntime HF Pipeline | beam | video_06.mp3 | 901.0335 | 100.462461 | 0.426749 | 0.0 | 0.414804 | 0.0 |
|  |  |  |  |  |  | 559.938202 |  |  |  |  |

### Core 48 (48-95) | ONNXRuntime Custom Python | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_04.mp3 | 98.6535 | 1.637443 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_01.mp3 | 172.1935 | 2.668068 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_02.mp3 | 265.9735 | 4.385584 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_03.mp3 | 476.9335 | 8.707084 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_07.mp3 | 572.6135 | 10.735023 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_05.mp3 | 614.2335 | 13.344095 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_08.mp3 | 750.9335 | 13.954777 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_10.mp3 | 646.8335 | 14.003155 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_09.mp3 | 959.9535 | 16.903733 | 0.152284 | 0.679932 | 0.118822 | 0.646362 |
| 48 | 48-95 | ONNXRuntime Custom Python | greedy | video_06.mp3 | 901.0335 | 18.518901 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
|  |  |  |  |  |  | 104.857863 |  |  |  |  |

### Core 48 (48-95) | ONNXRuntime Custom Python | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_04.mp3 | 98.6535 | 5.815798 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_01.mp3 | 172.1935 | 9.283162 | 0.235849 | 1.774194 | 0.214376 | 1.64657 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_02.mp3 | 265.9735 | 14.413562 | 0.059846 | 0.981061 | 0.04 | 0.953558 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_03.mp3 | 476.9335 | 29.11132 | 0.144804 | 0.636933 | 0.131055 | 0.660533 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_07.mp3 | 572.6135 | 36.210466 | 0.053447 | 1.385338 | 0.041229 | 1.39446 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_05.mp3 | 614.2335 | 47.08592 | 0.07043 | 0.479006 | 0.055856 | 0.49419 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_08.mp3 | 750.9335 | 47.39837 | 0.074671 | 1.020885 | 0.047538 | 1.047411 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_10.mp3 | 646.8335 | 52.475993 | 0.112704 | 0.577778 | 0.084264 | 0.563633 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_09.mp3 | 959.9535 | 58.748515 | 0.131472 | 0.635902 | 0.101975 | 0.633586 |
| 48 | 48-95 | ONNXRuntime Custom Python | beam | video_06.mp3 | 901.0335 | 64.642122 | 0.098183 | 0.621604 | 0.079883 | 0.618286 |
|  |  |  |  |  |  | 365.185228 |  |  |  |  |

### Core 48 (48-95) | OpenAI Whisper Python | default

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 48 | 48-95 | OpenAI Whisper Python | default | video_04.mp3 | 98.6535 | 6.962344 | 0.0 | 0.794393 | 0.0 | 0.801603 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_01.mp3 | 172.1935 | 10.102363 | 0.0 | 2.430108 | 0.0 | 2.297297 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_02.mp3 | 265.9735 | 15.949588 | 0.0 | 1.018939 | 0.0 | 0.985768 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_03.mp3 | 476.9335 | 36.978131 | 0.0 | 0.85759 | 0.0 | 0.87608 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_07.mp3 | 572.6135 | 44.292551 | 0.0 | 1.456767 | 0.0 | 1.458837 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_05.mp3 | 614.2335 | 52.887526 | 0.0 | 0.557841 | 0.0 | 0.555352 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_08.mp3 | 750.9335 | 54.645776 | 0.0 | 1.088452 | 0.0 | 1.088828 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_10.mp3 | 646.8335 | 62.411134 | 0.0 | 0.704527 | 0.0 | 0.661939 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_06.mp3 | 901.0335 | 69.973988 | 0.0 | 0.73161 | 0.0 | 0.702887 |
| 48 | 48-95 | OpenAI Whisper Python | default | video_09.mp3 | 959.9535 | 78.187185 | 0.046193 | 0.713802 | 0.031574 | 0.683392 |
|  |  |  |  |  |  | 432.390586 |  |  |  |  |

### Core 65 (96-160) | ONNXRuntime HF Pipeline | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_04.mp3 | 98.6535 | 6.496264 | 0.457895 | 0.018692 | 0.453229 | 0.014028 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_01.mp3 | 172.1935 | 9.36766 | 0.515723 | 1.311828 | 0.502522 | 0.977131 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_02.mp3 | 265.9735 | 16.41405 | 0.507722 | 0.390152 | 0.490286 | 0.317603 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_03.mp3 | 476.9335 | 25.789851 | 0.548552 | 0.403756 | 0.544523 | 0.326699 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_07.mp3 | 572.6135 | 41.238095 | 0.429125 | 0.620301 | 0.429004 | 0.55794 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_10.mp3 | 646.8335 | 50.022394 | 0.487889 | 0.320165 | 0.474133 | 0.273838 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_08.mp3 | 750.9335 | 53.128694 | 0.620669 | 0.367322 | 0.602541 | 0.306812 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_05.mp3 | 614.2335 | 53.249589 | 0.38569 | 0.108826 | 0.38043 | 0.120285 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_09.mp3 | 959.9535 | 63.159694 | 0.474619 | 0.217612 | 0.452639 | 0.181263 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | greedy | video_06.mp3 | 901.0335 | 71.028427 | 0.515655 | 0.231279 | 0.500824 | 0.214995 |
|  |  |  |  |  |  | 389.894718 |  |  |  |  |

### Core 65 (96-160) | ONNXRuntime HF Pipeline | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_04.mp3 | 98.6535 | 8.64186 | 0.447368 | 0.0 | 0.445434 | 0.0 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_01.mp3 | 172.1935 | 14.513784 | 0.710692 | 0.0 | 0.696721 | 0.0 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_02.mp3 | 265.9735 | 19.908403 | 0.519305 | 0.0 | 0.501333 | 0.0 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_03.mp3 | 476.9335 | 46.31432 | 0.46678 | 0.0 | 0.468945 | 0.0 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_07.mp3 | 572.6135 | 54.566747 | 0.60031 | 0.0 | 0.595193 | 0.0 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_08.mp3 | 750.9335 | 72.528926 | 0.529271 | 0.0 | 0.523311 | 0.0 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_05.mp3 | 614.2335 | 75.321828 | 0.36389 | 0.0 | 0.359699 | 0.0 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_10.mp3 | 646.8335 | 84.558993 | 0.423134 | 0.0 | 0.403313 | 0.0 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_09.mp3 | 959.9535 | 88.756444 | 0.441624 | 0.0 | 0.420841 | 0.0 |
| 65 | 96-160 | ONNXRuntime HF Pipeline | beam | video_06.mp3 | 901.0335 | 100.543236 | 0.426749 | 0.0 | 0.414804 | 0.0 |
|  |  |  |  |  |  | 565.654541 |  |  |  |  |

### Core 65 (96-160) | ONNXRuntime Custom Python | greedy

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_04.mp3 | 98.6535 | 1.63696 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_01.mp3 | 172.1935 | 2.884822 | 0.251572 | 2.258065 | 0.240858 | 1.773389 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_02.mp3 | 265.9735 | 4.331291 | 0.121622 | 0.992424 | 0.103619 | 0.94382 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_03.mp3 | 476.9335 | 8.072052 | 0.263203 | 0.744914 | 0.245427 | 0.667293 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_07.mp3 | 572.6135 | 10.461827 | 0.077459 | 1.368421 | 0.070996 | 1.355833 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_05.mp3 | 614.2335 | 11.591973 | 0.069312 | 0.496144 | 0.053744 | 0.508053 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_10.mp3 | 646.8335 | 11.668526 | 0.189323 | 0.583539 | 0.165166 | 0.54669 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_08.mp3 | 750.9335 | 12.705424 | 0.105137 | 1.077396 | 0.062336 | 1.090736 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_09.mp3 | 959.9535 | 14.723851 | 0.152284 | 0.679932 | 0.118822 | 0.646362 |
| 65 | 96-160 | ONNXRuntime Custom Python | greedy | video_06.mp3 | 901.0335 | 16.376711 | 0.099343 | 0.634195 | 0.077684 | 0.634275 |
|  |  |  |  |  |  | 94.453437 |  |  |  |  |

### Core 65 (96-160) | ONNXRuntime Custom Python | beam

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_04.mp3 | 98.6535 | 5.03153 | 0.026316 | 0.766355 | 0.007795 | 0.793587 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_01.mp3 | 172.1935 | 8.516695 | 0.235849 | 1.774194 | 0.214376 | 1.64657 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_02.mp3 | 265.9735 | 12.853945 | 0.059846 | 0.981061 | 0.04 | 0.953558 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_03.mp3 | 476.9335 | 26.014881 | 0.144804 | 0.636933 | 0.131055 | 0.660533 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_07.mp3 | 572.6135 | 35.83254 | 0.053447 | 1.385338 | 0.041229 | 1.39446 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_05.mp3 | 614.2335 | 40.617912 | 0.07043 | 0.479006 | 0.055856 | 0.49419 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_08.mp3 | 750.9335 | 42.102657 | 0.074671 | 1.020885 | 0.047538 | 1.047411 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_10.mp3 | 646.8335 | 49.434442 | 0.112704 | 0.577778 | 0.084264 | 0.563633 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_09.mp3 | 959.9535 | 57.266113 | 0.131472 | 0.635902 | 0.101975 | 0.633586 |
| 65 | 96-160 | ONNXRuntime Custom Python | beam | video_06.mp3 | 901.0335 | 60.081273 | 0.098183 | 0.621604 | 0.079883 | 0.618286 |
|  |  |  |  |  |  | 337.751988 |  |  |  |  |

### Core 65 (96-160) | OpenAI Whisper Python | default

| Core | Core Binding | Implementation | Decoding | File | Duration (s) | End-to-End (s) | WER vs OpenAI GT | WER vs HF GT | CER vs OpenAI GT | CER vs HF GT |
|---|---|---|---|---|---|---|---|---|---|---|
| 65 | 96-160 | OpenAI Whisper Python | default | video_04.mp3 | 98.6535 | 6.480034 | 0.0 | 0.794393 | 0.0 | 0.801603 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_01.mp3 | 172.1935 | 10.115146 | 0.0 | 2.430108 | 0.0 | 2.297297 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_02.mp3 | 265.9735 | 16.752066 | 0.0 | 1.018939 | 0.0 | 0.985768 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_03.mp3 | 476.9335 | 39.463583 | 0.0 | 0.85759 | 0.0 | 0.87608 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_07.mp3 | 572.6135 | 41.475792 | 0.0 | 1.456767 | 0.0 | 1.458837 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_05.mp3 | 614.2335 | 50.665965 | 0.0 | 0.557841 | 0.0 | 0.555352 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_08.mp3 | 750.9335 | 56.226459 | 0.0 | 1.088452 | 0.0 | 1.088828 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_10.mp3 | 646.8335 | 62.339358 | 0.0 | 0.704527 | 0.0 | 0.661939 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_06.mp3 | 901.0335 | 74.484902 | 0.0 | 0.73161 | 0.0 | 0.702887 |
| 65 | 96-160 | OpenAI Whisper Python | default | video_09.mp3 | 959.9535 | 78.48885 | 0.052792 | 0.769687 | 0.028339 | 0.717275 |
|  |  |  |  |  |  | 436.492155 |  |  |  |  |

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
