.class public Lnet/hockeyapp/android/objects/FeedbackMessage;
.super Ljava/lang/Object;
.source "FeedbackMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x79c0036a37b8b480L


# instance fields
.field private appId:Ljava/lang/String;

.field private cleanText:Ljava/lang/String;

.field private createdAt:Ljava/lang/String;

.field private id:I

.field private model:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private oem:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userString:Ljava/lang/String;

.field private via:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCleanText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->cleanText:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->id:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->oem:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->userString:Ljava/lang/String;

    return-object v0
.end method

.method public getVia()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->via:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->appId:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setCleanText(Ljava/lang/String;)V
    .locals 0
    .param p1, "cleanText"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->cleanText:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->createdAt:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 80
    iput p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->id:I

    .line 81
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->model:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->name:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setOem(Ljava/lang/String;)V
    .locals 0
    .param p1, "oem"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->oem:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->osVersion:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSubjec(Ljava/lang/String;)V
    .locals 0
    .param p1, "subjec"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->subject:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->text:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->token:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setUserString(Ljava/lang/String;)V
    .locals 0
    .param p1, "userString"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->userString:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setVia(I)V
    .locals 0
    .param p1, "via"    # I

    .prologue
    .line 96
    iput p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->via:I

    .line 97
    return-void
.end method
