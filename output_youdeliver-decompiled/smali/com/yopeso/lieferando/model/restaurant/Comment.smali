.class public Lcom/yopeso/lieferando/model/restaurant/Comment;
.super Ljava/lang/Object;
.source "Comment.java"


# instance fields
.field private mComment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private mUserPhotoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "picture"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Comment;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/Comment;->mUserPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Comment;->mComment:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setUserPhotoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "userPhotoUrl"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/Comment;->mUserPhotoUrl:Ljava/lang/String;

    .line 32
    return-void
.end method
