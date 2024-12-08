.class public Lcom/yopeso/lieferando/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 25
    const/high16 v7, 0x10000

    new-array v0, v7, [C

    .line 26
    .local v0, "buffer":[C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v4, "out":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 29
    .local v2, "in":Ljava/io/Reader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v3, p0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .end local v2    # "in":Ljava/io/Reader;
    .local v3, "in":Ljava/io/Reader;
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    array-length v8, v0

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/Reader;->read([CII)I

    move-result v5

    .line 33
    .local v5, "read":I
    if-lez v5, :cond_1

    .line 34
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :cond_1
    if-gez v5, :cond_0

    .line 43
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 48
    :goto_0
    if-eqz v3, :cond_4

    .line 49
    :try_start_3
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    move-object v2, v3

    .line 55
    .end local v3    # "in":Ljava/io/Reader;
    .end local v5    # "read":I
    .restart local v2    # "in":Ljava/io/Reader;
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "result":Ljava/lang/String;
    return-object v6

    .line 37
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 48
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    if-eqz v2, :cond_2

    .line 49
    :try_start_6
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 51
    :catch_1
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 44
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v1

    .line 45
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 39
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 40
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 43
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 48
    :goto_5
    if-eqz v2, :cond_2

    .line 49
    :try_start_9
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    .line 51
    :catch_4
    move-exception v1

    .line 52
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 44
    :catch_5
    move-exception v1

    .line 45
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 41
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 43
    :goto_6
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 48
    :goto_7
    if-eqz v2, :cond_3

    .line 49
    :try_start_b
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 54
    :cond_3
    :goto_8
    throw v7

    .line 44
    :catch_6
    move-exception v1

    .line 45
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 51
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 52
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 44
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/Reader;
    .restart local v3    # "in":Ljava/io/Reader;
    .restart local v5    # "read":I
    :catch_8
    move-exception v1

    .line 45
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v1    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 52
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    move-object v2, v3

    .end local v3    # "in":Ljava/io/Reader;
    .restart local v2    # "in":Ljava/io/Reader;
    goto :goto_1

    .line 41
    .end local v2    # "in":Ljava/io/Reader;
    .end local v5    # "read":I
    .restart local v3    # "in":Ljava/io/Reader;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/Reader;
    .restart local v2    # "in":Ljava/io/Reader;
    goto :goto_6

    .line 39
    .end local v2    # "in":Ljava/io/Reader;
    .restart local v3    # "in":Ljava/io/Reader;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/Reader;
    .restart local v2    # "in":Ljava/io/Reader;
    goto :goto_4

    .line 37
    .end local v2    # "in":Ljava/io/Reader;
    .restart local v3    # "in":Ljava/io/Reader;
    :catch_b
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/Reader;
    .restart local v2    # "in":Ljava/io/Reader;
    goto :goto_2
.end method
