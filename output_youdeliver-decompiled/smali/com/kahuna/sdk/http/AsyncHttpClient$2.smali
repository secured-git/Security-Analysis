.class Lcom/kahuna/sdk/http/AsyncHttpClient$2;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/http/AsyncHttpClient;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kahuna/sdk/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/http/AsyncHttpClient;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/kahuna/sdk/http/AsyncHttpClient$2;->this$0:Lcom/kahuna/sdk/http/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 152
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 153
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    if-nez v3, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    .line 157
    .local v2, "encoding":Lorg/apache/http/Header;
    if-eqz v2, :cond_0

    .line 158
    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 159
    .local v1, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 160
    new-instance v6, Lcom/kahuna/sdk/http/AsyncHttpClient$InflatingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/kahuna/sdk/http/AsyncHttpClient$InflatingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 158
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
