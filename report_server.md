t report.md
# Whisper ONNX Benchmark Report

- Run ID: `run_2_20260221_203248`
- Audio Dir: `audio`
- ONNX Dir: `models/whisper-base-with-past`
- PyTorch Dir: `models/openai-whisper-base-pytorch`
- Processor Source: `models/whisper-base-with-past`
- Implementations: `ONNXRuntime HF Pipeline, ONNXRuntime Custom Python, OpenAI Whisper Python`
- Dry Run: `False`
- Stride (left,right): `(0.0, 0.0)`

## Baseline Definitions

- Primary baseline (top priority): `ONNXRuntime HF Pipeline` beam per-file transcript (`num_beams=5`).
- Secondary comparison baseline: `OpenAI Whisper Python` default per-file transcript.

## Summary

| Cores | Core Binding | Implementation | Decoding | Beam Size | Avg Time (s) | P95 Time (s) | Avg WER vs HF Beam5 | Avg CER vs HF Beam5 | Avg WER vs OpenAI | Avg CER vs OpenAI | RAM Usage (MB) |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 2 | 48,95 | ONNXRuntime HF Pipeline | greedy | 1 | 46.221041 | 80.172183 | 0.398993 | 0.329059 | 0.496254 | 0.484795 | 4963.141 |
| 2 | 48,95 | ONNXRuntime Custom Python | greedy | 1 | 13.520318 | 22.555365 | 0.960138 | 0.896004 | 0.137077 | 0.115712 | 4963.141 |
| 2 | 48,95 | ONNXRuntime HF Pipeline | beam | 1 | 41.573739 | 72.189078 | 0.398993 | 0.329059 | 0.496254 | 0.484795 | 4963.141 |
| 2 | 48,95 | ONNXRuntime Custom Python | beam | 1 | 14.311801 | 24.60809 | 0.960138 | 0.896004 | 0.137077 | 0.115712 | 4963.141 |
| 2 | 48,95 | OpenAI Whisper Python | default | 0 | 47.375763 | 80.473391 | 1.040822 | 1.014642 | 0.00943 | 0.005497 | 4963.141 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | greedy | 1 | 41.800531 | 73.569185 | 0.398993 | 0.329059 | 0.496254 | 0.484795 | 3492.469 |
| 16 | 0-15 | ONNXRuntime Custom Python | greedy | 1 | 11.84582 | 20.625931 | 0.960138 | 0.896004 | 0.137077 | 0.115712 | 4951.32 |
| 16 | 0-15 | ONNXRuntime HF Pipeline | beam | 1 | 42.578396 | 74.308163 | 0.398993 | 0.329059 | 0.496254 | 0.484795 | 4951.32 |
| 16 | 0-15 | ONNXRuntime Custom Python | beam | 1 | 12.984623 | 22.315646 | 0.960138 | 0.896004 | 0.137077 | 0.115712 | 4963.141 |
| 16 | 0-15 | OpenAI Whisper Python | default | 0 | 47.429862 | 79.807656 | 1.038197 | 1.013161 | 0.008251 | 0.004893 | 4963.141 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | greedy | 1 | 38.008892 | 66.175541 | 0.398993 | 0.329059 | 0.496254 | 0.484795 | 4963.141 |
| 32 | 16-47 | ONNXRuntime Custom Python | greedy | 1 | 10.872302 | 18.870713 | 0.960138 | 0.896004 | 0.137077 | 0.115712 | 4963.141 |
| 32 | 16-47 | ONNXRuntime HF Pipeline | beam | 1 | 38.22164 | 67.670664 | 0.398993 | 0.329059 | 0.496254 | 0.484795 | 4963.141 |
| 32 | 16-47 | ONNXRuntime Custom Python | beam | 1 | 12.248171 | 20.623521 | 0.960138 | 0.896004 | 0.137077 | 0.115712 | 4963.141 |
| 32 | 16-47 | OpenAI Whisper Python | default | 0 | 44.750047 | 74.000139 | 1.038959 | 1.013753 | 0.007957 | 0.00459 | 4963.141 |

## Notes

- Rows are sorted by cores ascending, then decoding, then implementation.
- `core_binding` shows the exact CPU affinity used for each benchmark row.
- `wer`/`cer` map to WER/CER vs HF beam baseline (num_beams=5).
