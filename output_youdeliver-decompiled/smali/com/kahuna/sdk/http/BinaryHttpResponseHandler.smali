.class public Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;
.super Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;
.source "BinaryHttpResponseHandler.java"


# static fields
.field private static mAllowedContentTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image/png"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "allowedContentTypes"    # [Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;-><init>()V

    .line 78
    sput-object p1, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # [B

    .prologue
    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;[B)V

    .line 137
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 153
    invoke-super {p0, p1}, Lcom/kahuna/sdk/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 156
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 146
    .local v0, "response":[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v0, v3

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {p0, v2, v1}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->handleSuccessMessage(I[B)V

    goto :goto_0

    .line 149
    .end local v0    # "response":[Ljava/lang/Object;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 150
    .restart local v0    # "response":[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Throwable;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleSuccessMessage(I[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # [B

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->onSuccess(I[B)V

    .line 133
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;[B)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "binaryData"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public onSuccess(I[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "binaryData"    # [B

    .prologue
    .line 98
    invoke-virtual {p0, p2}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->onSuccess([B)V

    .line 99
    return-void
.end method

.method public onSuccess([B)V
    .locals 0
    .param p1, "binaryData"    # [B

    .prologue
    .line 90
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # [B

    .prologue
    const/4 v2, 0x1

    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 125
    return-void
.end method

.method sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 17
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 161
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 162
    .local v12, "status":Lorg/apache/http/StatusLine;
    const-string v14, "Content-Type"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 163
    .local v4, "contentTypeHeaders":[Lorg/apache/http/Header;
    const/4 v11, 0x0

    .line 164
    .local v11, "responseBody":[B
    array-length v14, v4

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    .line 166
    new-instance v14, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const-string v16, "None, or more than one, Content-Type Header found!"

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    .line 197
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v14, 0x0

    aget-object v3, v4, v14

    .line 170
    .local v3, "contentTypeHeader":Lorg/apache/http/Header;
    const/4 v8, 0x0

    .line 171
    .local v8, "foundAllowedContentType":Z
    sget-object v2, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_2

    aget-object v1, v2, v9

    .line 172
    .local v1, "anAllowedContentType":Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 173
    const/4 v8, 0x1

    .line 171
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 176
    .end local v1    # "anAllowedContentType":Ljava/lang/String;
    :cond_2
    if-nez v8, :cond_3

    .line 178
    new-instance v14, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const-string v16, "Content-Type not allowed!"

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 182
    :cond_3
    const/4 v6, 0x0

    .line 183
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 184
    .local v13, "temp":Lorg/apache/http/HttpEntity;
    if-eqz v13, :cond_4

    .line 185
    new-instance v7, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v7, v13}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    move-object v6, v7

    .line 187
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    :cond_4
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 192
    .end local v13    # "temp":Lorg/apache/http/HttpEntity;
    :goto_2
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0x12c

    if-lt v14, v15, :cond_5

    .line 193
    new-instance v14, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 188
    :catch_0
    move-exception v5

    .line 189
    .local v5, "e":Ljava/io/IOException;
    const/4 v14, 0x0

    check-cast v14, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_2

    .line 195
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->sendSuccessMessage(I[B)V

    goto :goto_0
.end method

.method protected sendSuccessMessage(I[B)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # [B

    .prologue
    const/4 v2, 0x0

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kahuna/sdk/http/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 120
    return-void
.end method
