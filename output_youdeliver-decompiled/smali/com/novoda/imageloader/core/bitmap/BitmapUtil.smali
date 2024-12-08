.class public Lcom/novoda/imageloader/core/bitmap/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x10000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "c"    # Ljava/io/Closeable;

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 262
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private decodeFile(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "f"    # Ljava/io/File;
    .param p2, "suggestedSize"    # I

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 220
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->evaluateScale(Ljava/io/File;I)I

    move-result v4

    .line 221
    .local v4, "scale":I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 222
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 223
    const/high16 v5, 0x10000

    new-array v5, v5, [B

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 224
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 225
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v2, v5, v3}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 232
    invoke-direct {p0, v2}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 234
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "scale":I
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 227
    :catch_0
    move-exception v5

    .line 232
    :goto_1
    invoke-direct {p0, v1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    invoke-direct {p0, v1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "scale":I
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 227
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private decodeFileToPopulateOptions(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .param p1, "f"    # Ljava/io/File;
    .param p2, "o"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, v2, p2}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 249
    invoke-direct {p0, v1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    invoke-direct {p0, v1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 257
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v2

    .line 255
    :goto_1
    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_2
    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 250
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private evaluateScale(Ljava/io/File;I)I
    .locals 3
    .param p1, "f"    # Ljava/io/File;
    .param p2, "suggestedSize"    # I

    .prologue
    .line 238
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 239
    .local v0, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 240
    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFileToPopulateOptions(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)V

    .line 241
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->calculateScale(III)I

    move-result v1

    return v1
.end method

.method private recycle(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "scaled"    # Landroid/graphics/Bitmap;

    .prologue
    .line 206
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateLastModifiedForCache(Ljava/io/File;)V
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 214
    return-void
.end method


# virtual methods
.method calculateScale(III)I
    .locals 2
    .param p1, "requiredSize"    # I
    .param p2, "widthTmp"    # I
    .param p3, "heightTmp"    # I

    .prologue
    .line 269
    const/4 v0, 0x1

    .line 271
    .local v0, "scale":I
    :goto_0
    div-int/lit8 v1, p2, 0x2

    if-lt v1, p1, :cond_0

    div-int/lit8 v1, p3, 0x2

    if-ge v1, p1, :cond_1

    .line 278
    :cond_0
    return v0

    .line 274
    :cond_1
    div-int/lit8 p2, p2, 0x2

    .line 275
    div-int/lit8 p3, p3, 0x2

    .line 276
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "f"    # Ljava/io/File;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->updateLastModifiedForCache(Ljava/io/File;)V

    .line 35
    move v0, p3

    .line 36
    .local v0, "suggestedSize":I
    if-le p2, p3, :cond_0

    .line 37
    move v0, p2

    .line 39
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFile(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 40
    .local v1, "unscaledBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 41
    const/4 v1, 0x0

    .line 43
    .end local v1    # "unscaledBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v1
.end method

.method public decodeFileAndScale(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFileAndScale(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public decodeFileAndScale(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "f"    # Ljava/io/File;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "upsampling"    # Z

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, "unscaledBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 62
    const/4 v1, 0x0

    .line 64
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->scaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public decodeInputStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v1, v2}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 199
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 201
    :goto_0
    return-object v0

    .line 194
    :catch_0
    move-exception v1

    .line 199
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method public decodeResourceBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "resourceId"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, "unscaledBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 91
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v1

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public decodeResourceBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "w"    # Lcom/novoda/imageloader/core/model/ImageWrapper;
    .param p2, "resId"    # I

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeResourceBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public decodeResourceBitmapAndScale(Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "resourceId"    # I
    .param p5, "upsampling"    # Z

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "unscaledBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0, p2, p3, p5}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->scaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    .line 99
    :catch_0
    move-exception v1

    .line 104
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public decodeResourceBitmapAndScale(Lcom/novoda/imageloader/core/model/ImageWrapper;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "w"    # Lcom/novoda/imageloader/core/model/ImageWrapper;
    .param p2, "resId"    # I
    .param p3, "upsampling"    # Z

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getHeight()I

    move-result v3

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeResourceBitmapAndScale(Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->scaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public scaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "upsampling"    # Z

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 152
    .local v3, "imageHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 153
    .local v4, "imageWidth":I
    if-nez p4, :cond_0

    if-gt v3, p3, :cond_0

    if-gt v4, p2, :cond_0

    .line 179
    .end local p1    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 156
    .restart local p1    # "b":Landroid/graphics/Bitmap;
    :cond_0
    move v2, p2

    .line 157
    .local v2, "finalWidth":I
    move v1, p3

    .line 158
    .local v1, "finalHeight":I
    if-le v3, v4, :cond_2

    .line 159
    int-to-float v6, p3

    int-to-float v7, v3

    div-float v0, v6, v7

    .line 160
    .local v0, "factor":F
    new-instance v6, Ljava/lang/Float;

    int-to-float v7, v3

    mul-float/2addr v7, v0

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 161
    new-instance v6, Ljava/lang/Float;

    int-to-float v7, v4

    mul-float/2addr v7, v0

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6}, Ljava/lang/Float;->intValue()I

    move-result v2

    .line 167
    :goto_1
    const/4 v5, 0x0

    .line 169
    .local v5, "scaled":Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    :try_start_0
    invoke-static {p1, v2, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 176
    :goto_2
    if-eq v5, p1, :cond_1

    .line 177
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->recycle(Landroid/graphics/Bitmap;)V

    :cond_1
    move-object p1, v5

    .line 179
    goto :goto_0

    .line 163
    .end local v0    # "factor":F
    .end local v5    # "scaled":Landroid/graphics/Bitmap;
    :cond_2
    int-to-float v6, p2

    int-to-float v7, v4

    div-float v0, v6, v7

    .line 164
    .restart local v0    # "factor":F
    new-instance v6, Ljava/lang/Float;

    int-to-float v7, v3

    mul-float/2addr v7, v0

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 165
    new-instance v6, Ljava/lang/Float;

    int-to-float v7, v4

    mul-float/2addr v7, v0

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6}, Ljava/lang/Float;->intValue()I

    move-result v2

    goto :goto_1

    .line 170
    .restart local v5    # "scaled":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public scaleResourceBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "resourceId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeResourceBitmapAndScale(Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public scaleResourceBitmap(Lcom/novoda/imageloader/core/model/ImageWrapper;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "w"    # Lcom/novoda/imageloader/core/model/ImageWrapper;
    .param p2, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/novoda/imageloader/core/model/ImageWrapper;->getHeight()I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeResourceBitmapAndScale(Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
