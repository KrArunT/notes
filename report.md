# Whisper ONNX Benchmark Report

- Run ID: `run_13_20260221_191822`
- Audio Dir: `audio`
- ONNX Dir: `models/whisper-base-with-past`
- Implementations: `ONNXRuntime HF Pipeline, ONNXRuntime Custom Python, OpenAI Whisper Python`
- Dry Run: `False`
- Stride (left,right): `(0.0, 0.0)`

## Baseline Definitions

- Primary baseline (top priority): `ONNXRuntime HF Pipeline` beam per-file transcript (`num_beams=5`).
- Secondary comparison baseline: `OpenAI Whisper Python` default per-file transcript.

## Summary

| Cores | Core Binding | Implementation | Decoding | Beam Size | Avg Time (s) | P95 Time (s) | Avg WER vs HF Beam5 | Avg CER vs HF Beam5 | Avg WER vs OpenAI | Avg CER vs OpenAI | RAM Usage (MB) |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 4 | 0-3 | ONNXRuntime HF Pipeline | greedy | 1 | 11.820566 | 21.310172 | 0.01145 | 0.009374 | 0.142562 | 0.137607 | 3474.672 |
| 4 | 0-3 | ONNXRuntime Custom Python | greedy | 1 | 9.551345 | 17.310303 | 0.195611 | 0.198163 | 0.013774 | 0.004828 | 3749.77 |
| 4 | 0-3 | ONNXRuntime HF Pipeline | beam | 5 | 27.104881 | 49.956617 | 0.0 | 0.0 | 0.14876 | 0.143911 | 3749.77 |
| 4 | 0-3 | ONNXRuntime Custom Python | beam | 5 | 37.035816 | 68.935295 | 0.191794 | 0.1976 | 0.013774 | 0.004828 | 3749.77 |
| 4 | 0-3 | OpenAI Whisper Python | default | 0 | 17.210137 | 31.662466 | 0.206107 | 0.201162 | 0.0 | 0.0 | 3831.145 |
| 9 | 4-12 | ONNXRuntime HF Pipeline | greedy | 1 | 18.187132 | 33.10479 | 0.01145 | 0.009374 | 0.142562 | 0.137607 | 4403.496 |
| 9 | 4-12 | ONNXRuntime Custom Python | greedy | 1 | 9.890864 | 18.064773 | 0.195611 | 0.198163 | 0.013774 | 0.004828 | 4403.496 |
| 9 | 4-12 | ONNXRuntime HF Pipeline | beam | 5 | 34.819014 | 64.279911 | 0.0 | 0.0 | 0.14876 | 0.143911 | 4403.496 |
| 9 | 4-12 | ONNXRuntime Custom Python | beam | 5 | 39.454151 | 73.454193 | 0.191794 | 0.1976 | 0.013774 | 0.004828 | 4403.496 |
| 9 | 4-12 | OpenAI Whisper Python | default | 0 | 16.636109 | 30.503133 | 0.206107 | 0.201162 | 0.0 | 0.0 | 4403.496 |

## Notes

- Rows are sorted by cores ascending, then decoding, then implementation.
- `core_binding` shows the exact CPU affinity used for each benchmark row.
- `wer`/`cer` map to WER/CER vs HF beam baseline (num_beams=5).
