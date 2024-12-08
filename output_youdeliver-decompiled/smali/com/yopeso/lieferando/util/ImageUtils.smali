.class public Lcom/yopeso/lieferando/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastblur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 42
    .param p0, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I

    .prologue
    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 194
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ge v0, v4, :cond_0

    .line 195
    const/4 v2, 0x0

    .line 391
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 198
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 199
    .local v5, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 201
    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 203
    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 205
    add-int/lit8 v36, v5, -0x1

    .line 206
    .local v36, "wm":I
    add-int/lit8 v21, v9, -0x1

    .line 207
    .local v21, "hm":I
    mul-int v35, v5, v9

    .line 208
    .local v35, "wh":I
    add-int v4, p1, p1

    add-int/lit8 v14, v4, 0x1

    .line 210
    .local v14, "div":I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 211
    .local v24, "r":[I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 212
    .local v17, "g":[I
    move/from16 v0, v35

    new-array v10, v0, [I

    .line 214
    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 216
    .local v34, "vmin":[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 217
    .local v15, "divsum":I
    mul-int/2addr v15, v15

    .line 218
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 219
    .local v16, "dv":[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-lt v0, v4, :cond_1

    .line 223
    const/16 v39, 0x0

    .local v39, "yi":I
    move/from16 v41, v39

    .line 225
    .local v41, "yw":I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    .line 230
    .local v31, "stack":[[I
    add-int/lit8 v25, p1, 0x1

    .line 234
    .local v25, "r1":I
    const/16 v38, 0x0

    .local v38, "y":I
    :goto_2
    move/from16 v0, v38

    if-lt v0, v9, :cond_2

    .line 307
    const/16 v37, 0x0

    .local v37, "x":I
    :goto_3
    move/from16 v0, v37

    if-lt v0, v5, :cond_7

    .line 389
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0

    .line 220
    .end local v25    # "r1":I
    .end local v31    # "stack":[[I
    .end local v37    # "x":I
    .end local v38    # "y":I
    .end local v39    # "yi":I
    .end local v41    # "yw":I
    :cond_1
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 219
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 235
    .restart local v25    # "r1":I
    .restart local v31    # "stack":[[I
    .restart local v38    # "y":I
    .restart local v39    # "yi":I
    .restart local v41    # "yw":I
    :cond_2
    const/4 v13, 0x0

    .local v13, "bsum":I
    move/from16 v20, v13

    .local v20, "gsum":I
    move/from16 v29, v13

    .local v29, "rsum":I
    move v12, v13

    .local v12, "boutsum":I
    move/from16 v19, v13

    .local v19, "goutsum":I
    move/from16 v28, v13

    .local v28, "routsum":I
    move v11, v13

    .local v11, "binsum":I
    move/from16 v18, v13

    .local v18, "ginsum":I
    move/from16 v27, v13

    .line 236
    .local v27, "rinsum":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, p1

    if-le v0, v1, :cond_3

    .line 256
    move/from16 v32, p1

    .line 258
    .local v32, "stackpointer":I
    const/16 v37, 0x0

    .restart local v37    # "x":I
    :goto_5
    move/from16 v0, v37

    if-lt v0, v5, :cond_5

    .line 305
    add-int v41, v41, v5

    .line 234
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 237
    .end local v32    # "stackpointer":I
    .end local v37    # "x":I
    :cond_3
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v39

    aget v23, v3, v4

    .line 238
    .local v23, "p":I
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .line 239
    .local v30, "sir":[I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    .line 240
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    .line 241
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 242
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 243
    .local v26, "rbs":I
    const/4 v4, 0x0

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 244
    const/4 v4, 0x1

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 245
    const/4 v4, 0x2

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 246
    if-lez v22, :cond_4

    .line 247
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 248
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 249
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 236
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 251
    :cond_4
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 252
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 253
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_6

    .line 260
    .end local v23    # "p":I
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    .restart local v32    # "stackpointer":I
    .restart local v37    # "x":I
    :cond_5
    aget v4, v16, v29

    aput v4, v24, v39

    .line 261
    aget v4, v16, v20

    aput v4, v17, v39

    .line 262
    aget v4, v16, v13

    aput v4, v10, v39

    .line 264
    sub-int v29, v29, v28

    .line 265
    sub-int v20, v20, v19

    .line 266
    sub-int/2addr v13, v12

    .line 268
    sub-int v4, v32, p1

    add-int v33, v4, v14

    .line 269
    .local v33, "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 271
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 272
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 273
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 275
    if-nez v38, :cond_6

    .line 276
    add-int v4, v37, p1

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v34, v37

    .line 278
    :cond_6
    aget v4, v34, v37

    add-int v4, v4, v41

    aget v23, v3, v4

    .line 280
    .restart local v23    # "p":I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    .line 281
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    .line 282
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 284
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 285
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 286
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 288
    add-int v29, v29, v27

    .line 289
    add-int v20, v20, v18

    .line 290
    add-int/2addr v13, v11

    .line 292
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 293
    rem-int v4, v32, v14

    aget-object v30, v31, v4

    .line 295
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 296
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 297
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 299
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 300
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 301
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 303
    add-int/lit8 v39, v39, 0x1

    .line 258
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_5

    .line 308
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v23    # "p":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v30    # "sir":[I
    .end local v32    # "stackpointer":I
    .end local v33    # "stackstart":I
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    move/from16 v20, v13

    .restart local v20    # "gsum":I
    move/from16 v29, v13

    .restart local v29    # "rsum":I
    move v12, v13

    .restart local v12    # "boutsum":I
    move/from16 v19, v13

    .restart local v19    # "goutsum":I
    move/from16 v28, v13

    .restart local v28    # "routsum":I
    move v11, v13

    .restart local v11    # "binsum":I
    move/from16 v18, v13

    .restart local v18    # "ginsum":I
    move/from16 v27, v13

    .line 309
    .restart local v27    # "rinsum":I
    move/from16 v0, p1

    neg-int v4, v0

    mul-int v40, v4, v5

    .line 310
    .local v40, "yp":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, p1

    if-le v0, v1, :cond_8

    .line 339
    move/from16 v39, v37

    .line 340
    move/from16 v32, p1

    .line 341
    .restart local v32    # "stackpointer":I
    const/16 v38, 0x0

    :goto_8
    move/from16 v0, v38

    if-lt v0, v9, :cond_b

    .line 307
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_3

    .line 311
    .end local v32    # "stackpointer":I
    :cond_8
    const/4 v4, 0x0

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v39, v4, v37

    .line 313
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .line 315
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v6, v24, v39

    aput v6, v30, v4

    .line 316
    const/4 v4, 0x1

    aget v6, v17, v39

    aput v6, v30, v4

    .line 317
    const/4 v4, 0x2

    aget v6, v10, v39

    aput v6, v30, v4

    .line 319
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 321
    .restart local v26    # "rbs":I
    aget v4, v24, v39

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 322
    aget v4, v17, v39

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 323
    aget v4, v10, v39

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 325
    if-lez v22, :cond_a

    .line 326
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 327
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 328
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 335
    :goto_9
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 336
    add-int v40, v40, v5

    .line 310
    :cond_9
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 330
    :cond_a
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 331
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 332
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_9

    .line 343
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    .restart local v32    # "stackpointer":I
    :cond_b
    const/high16 v4, -0x1000000

    aget v6, v3, v39

    and-int/2addr v4, v6

    aget v6, v16, v29

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v39

    .line 345
    sub-int v29, v29, v28

    .line 346
    sub-int v20, v20, v19

    .line 347
    sub-int/2addr v13, v12

    .line 349
    sub-int v4, v32, p1

    add-int v33, v4, v14

    .line 350
    .restart local v33    # "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 352
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 353
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 354
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 356
    if-nez v37, :cond_c

    .line 357
    add-int v4, v38, v25

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v34, v38

    .line 359
    :cond_c
    aget v4, v34, v38

    add-int v23, v37, v4

    .line 361
    .restart local v23    # "p":I
    const/4 v4, 0x0

    aget v6, v24, v23

    aput v6, v30, v4

    .line 362
    const/4 v4, 0x1

    aget v6, v17, v23

    aput v6, v30, v4

    .line 363
    const/4 v4, 0x2

    aget v6, v10, v23

    aput v6, v30, v4

    .line 365
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 366
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 367
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 369
    add-int v29, v29, v27

    .line 370
    add-int v20, v20, v18

    .line 371
    add-int/2addr v13, v11

    .line 373
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 374
    aget-object v30, v31, v32

    .line 376
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 377
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 378
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 380
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 381
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 382
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 384
    add-int v39, v39, v5

    .line 341
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_8
.end method

.method public static getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 410
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 411
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 412
    invoke-static {p0, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 396
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 397
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 398
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 399
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 400
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 401
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 405
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 405
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getCroppedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    .line 133
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 134
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 135
    .local v1, "height":I
    const-class v5, Lcom/yopeso/lieferando/util/ImageUtils;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "width:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 138
    .local v2, "outputBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 139
    .local v3, "path":Landroid/graphics/Path;
    if-le v1, v4, :cond_0

    .line 141
    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    .line 142
    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    .line 143
    div-int/lit8 v7, v4, 0x2

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    .line 144
    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 140
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 155
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 157
    const/4 v5, 0x0

    invoke-virtual {v0, p0, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 158
    const-class v5, Lcom/yopeso/lieferando/util/ImageUtils;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OUTPUT: width:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-object v2

    .line 148
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    .line 149
    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    .line 150
    div-int/lit8 v7, v1, 0x2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    .line 151
    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 147
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_0
.end method

.method public static getOptimizedHeaderUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    const-string v4, ""

    .line 94
    :goto_0
    return-object v4

    .line 84
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 85
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 86
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$dimen;->meal_baner_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 89
    .local v1, "imgHeightPx":I
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 90
    .local v2, "width":I
    invoke-static {p1}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v2, v4, 0x3

    .line 94
    :cond_1
    const-string v4, "-0-0."

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/SettingsContent;->getmImage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->getValidURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getOptimizedLogoUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const-string v1, ""

    .line 67
    :goto_0
    return-object v1

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$dimen;->rest_logo_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 67
    .local v0, "imgWidthPx":I
    const-string v1, "-0-0."

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->getValidURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getOptimizedMealLogoUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    const-string v2, ""

    .line 76
    :goto_0
    return-object v2

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$dimen;->meal_logo_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 75
    .local v1, "imgWidthPx":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$dimen;->meal_logo_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 76
    .local v0, "imgHeightPx":I
    const-string v2, "-0-0."

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getmImage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->getValidURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getOptimizedUserCommentImage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const-string v1, ""

    .line 41
    :goto_0
    return-object v1

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$dimen;->profile_comment_image:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 41
    .local v0, "imgWidthPx":I
    const-string v1, "-0-0."

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->getValidURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getOptimizedUserImage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    const-string v1, ""

    .line 57
    :goto_0
    return-object v1

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$dimen;->profile_top_image_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 57
    .local v0, "imgWidthPx":I
    const-string v1, "-0-0."

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->getValidURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getOptimizedUserProfileImage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    const-string v1, ""

    .line 49
    :goto_0
    return-object v1

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$dimen;->profile_image_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 49
    .local v0, "imgWidthPx":I
    const-string v1, "-0-0."

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->getValidURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getPowerOfTwoForSampleRatio(D)I
    .locals 4
    .param p0, "ratio"    # D

    .prologue
    .line 420
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 421
    .local v0, "k":I
    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x1

    .line 424
    .end local v0    # "k":I
    :cond_0
    return v0
.end method

.method public static getThumbnail(Landroid/net/Uri;ZLandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "scale"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    const/high16 v8, 0x43c80000    # 400.0f

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v10, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v0, v8

    .line 106
    .local v0, "THUMBNAIL_SIZE":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 108
    .local v3, "input":Ljava/io/InputStream;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 109
    .local v4, "onlyBoundsOptions":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 110
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 111
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 112
    invoke-static {v3, v1, v4}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 113
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 114
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v8, v11, :cond_0

    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v8, v11, :cond_2

    .line 129
    :cond_0
    :goto_1
    return-object v1

    .line 103
    .end local v0    # "THUMBNAIL_SIZE":I
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "onlyBoundsOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/high16 v8, 0x43000000    # 128.0f

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v10, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v0, v8

    .restart local v0    # "THUMBNAIL_SIZE":I
    goto :goto_0

    .line 117
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "onlyBoundsOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v8, v9, :cond_3

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 119
    .local v5, "originalSize":I
    :goto_2
    if-le v5, v0, :cond_4

    div-int v8, v5, v0

    int-to-double v6, v8

    .line 121
    .local v6, "ratio":D
    :goto_3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 122
    .local v2, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v6, v7}, Lcom/yopeso/lieferando/util/ImageUtils;->getPowerOfTwoForSampleRatio(D)I

    move-result v8

    iput v8, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 123
    iput-boolean v10, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 124
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 125
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 126
    invoke-static {v3, v1, v2}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 127
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 117
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "originalSize":I
    .end local v6    # "ratio":D
    :cond_3
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_2

    .line 119
    .restart local v5    # "originalSize":I
    :cond_4
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_3
.end method
