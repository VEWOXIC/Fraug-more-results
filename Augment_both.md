# Results for adding time-domain augmentation on both look-back window and horizon on ETTh1 Dataset

| Method     | Origin    | Noise | Mask-Rand. | Mask-Seg. | Flipping  | Warping   |
|------------|-----------|-------|------------|-----------|-----------|-----------|
| DLinear    |     0.374 | 0.371 |      0.373 |     0.381 |     0.373 | **0.370** |
| FEDFormer  | **0.374** | 0.394 |      0.375 |     0.403 | **0.374** |     0.375 |
| Autoformer |     0.449 | 0.476 |  **0.429** |     0.515 |     0.430 |     0.479 |
| Informer   | **0.931** | 1.112 |      1.073 |     0.972 |     0.932 |     1.064 |
