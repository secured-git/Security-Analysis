.class Lcom/kahuna/sdk/http/RequestParams$FileWrapper;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/http/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileWrapper"
.end annotation


# instance fields
.field public contentType:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/kahuna/sdk/http/RequestParams$FileWrapper;->inputStream:Ljava/io/InputStream;

    .line 313
    iput-object p2, p0, Lcom/kahuna/sdk/http/RequestParams$FileWrapper;->fileName:Ljava/lang/String;

    .line 314
    iput-object p3, p0, Lcom/kahuna/sdk/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    .line 315
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/kahuna/sdk/http/RequestParams$FileWrapper;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/kahuna/sdk/http/RequestParams$FileWrapper;->fileName:Ljava/lang/String;

    .line 321
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nofilename"

    goto :goto_0
.end method
