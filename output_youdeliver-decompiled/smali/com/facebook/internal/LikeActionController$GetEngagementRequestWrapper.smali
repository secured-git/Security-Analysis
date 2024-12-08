.class Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;
.super Lcom/facebook/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetEngagementRequestWrapper"
.end annotation


# instance fields
.field likeCountStringWithLike:Ljava/lang/String;

.field likeCountStringWithoutLike:Ljava/lang/String;

.field socialSentenceStringWithLike:Ljava/lang/String;

.field socialSentenceStringWithoutLike:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V
    .locals 4
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/internal/LikeActionController;

    .line 1253
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V

    .line 1247
    invoke-static {p1}, Lcom/facebook/internal/LikeActionController;->access$4(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithLike:Ljava/lang/String;

    .line 1248
    invoke-static {p1}, Lcom/facebook/internal/LikeActionController;->access$5(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 1249
    invoke-static {p1}, Lcom/facebook/internal/LikeActionController;->access$6(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithLike:Ljava/lang/String;

    .line 1250
    invoke-static {p1}, Lcom/facebook/internal/LikeActionController;->access$7(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithoutLike:Ljava/lang/String;

    .line 1255
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1257
    .local v0, "requestParams":Landroid/os/Bundle;
    const-string v1, "fields"

    .line 1258
    const-string v2, "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)"

    .line 1256
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    new-instance v1, Lcom/facebook/Request;

    invoke-static {p1}, Lcom/facebook/internal/LikeActionController;->access$0(Lcom/facebook/internal/LikeActionController;)Lcom/facebook/Session;

    move-result-object v2

    sget-object v3, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, p2, v0, v3}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    invoke-virtual {p0, v1}, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->setRequest(Lcom/facebook/Request;)V

    .line 1265
    return-void
.end method


# virtual methods
.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .locals 6
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1288
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1289
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$1()Ljava/lang/String;

    move-result-object v1

    .line 1290
    const-string v2, "Error fetching engagement for object \'%s\' : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 1288
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1291
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/internal/LikeActionController;

    const-string v1, "get_engagement"

    invoke-static {v0, v1, p1}, Lcom/facebook/internal/LikeActionController;->access$2(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1292
    return-void
.end method

.method protected processSuccess(Lcom/facebook/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 1269
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v1

    const-string v2, "engagement"

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->tryGetJSONObjectFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1270
    .local v0, "engagementResults":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 1273
    const-string v1, "count_string_with_like"

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1272
    iput-object v1, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithLike:Ljava/lang/String;

    .line 1276
    const-string v1, "count_string_without_like"

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithoutLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1275
    iput-object v1, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 1279
    const-string v1, "social_sentence_with_like"

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1278
    iput-object v1, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithLike:Ljava/lang/String;

    .line 1282
    const-string v1, "social_sentence_without_like"

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithoutLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1281
    iput-object v1, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithoutLike:Ljava/lang/String;

    .line 1284
    :cond_0
    return-void
.end method
