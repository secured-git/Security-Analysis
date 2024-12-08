.class public Lcom/yopeso/lieferando/model/user/Regexp;
.super Ljava/lang/Object;
.source "Regexp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x63b32223451966b7L


# instance fields
.field private mFormat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "format"
    .end annotation
.end field

.field private mMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Regexp;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yopeso/lieferando/model/user/Regexp;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Regexp;->mFormat:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/Regexp;->mMsg:Ljava/lang/String;

    .line 22
    return-void
.end method
