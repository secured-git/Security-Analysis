.class public Lcom/adjust/sdk/AdjustInstance;
.super Ljava/lang/Object;
.source "AdjustInstance.java"


# instance fields
.field private activityHandler:Lcom/adjust/sdk/ActivityHandler;

.field private referrer:Ljava/lang/String;

.field private referrerClickTime:J

.field private sessionParametersActionsArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/IRunActivityHandler;",
            ">;"
        }
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

.method private checkActivityHandler()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-object v1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-nez v1, :cond_0

    .line 209
    invoke-static {}, Lcom/adjust/sdk/AdjustInstance;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Adjust not initialized correctly"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getLogger()Lcom/adjust/sdk/ILogger;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addSessionCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/ActivityHandler;->addSessionCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/AdjustInstance$1;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/ActivityHandler;->addSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/AdjustInstance$2;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public appWillOpenUrl(Landroid/net/Uri;)V
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    .local v0, "clickTime":J
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v2, p1, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->readOpenUrl(Landroid/net/Uri;J)V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 3
    .param p1, "adjustConfig"    # Lcom/adjust/sdk/AdjustConfig;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/adjust/sdk/AdjustInstance;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Adjust already initialized"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->referrer:Ljava/lang/String;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->referrer:Ljava/lang/String;

    .line 28
    iget-wide v0, p0, Lcom/adjust/sdk/AdjustInstance;->referrerClickTime:J

    iput-wide v0, p1, Lcom/adjust/sdk/AdjustConfig;->referrerClickTime:J

    .line 29
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->sessionParametersActionsArray:Ljava/util/List;

    .line 31
    invoke-static {p1}, Lcom/adjust/sdk/ActivityHandler;->getInstance(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/ActivityHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->onResume()V

    goto :goto_0
.end method

.method public removeSessionCallbackParameter(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->removeSessionCallbackParameter(Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$3;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AdjustInstance$3;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeSessionPartnerParameter(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->removeSessionPartnerParameter(Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$4;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AdjustInstance$4;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public resetSessionCallbackParameters()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->resetSessionCallbackParameters()V

    .line 176
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$5;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/AdjustInstance$5;-><init>(Lcom/adjust/sdk/AdjustInstance;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public resetSessionPartnerParameters()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->resetSessionPartnerParameters()V

    .line 194
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->sessionParametersActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$6;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/AdjustInstance$6;-><init>(Lcom/adjust/sdk/AdjustInstance;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public sendFirstPackages()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->sendFirstPackages()V

    goto :goto_0
.end method

.method public sendReferrer(Ljava/lang/String;)V
    .locals 3
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 68
    .local v0, "clickTime":J
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-nez v2, :cond_0

    .line 70
    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->referrer:Ljava/lang/String;

    .line 71
    iput-wide v0, p0, Lcom/adjust/sdk/AdjustInstance;->referrerClickTime:J

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v2, p1, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->sendReferrer(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setOfflineMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->setOfflineMode(Z)V

    goto :goto_0
.end method

.method public setPushToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->setPushToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public teardown(Z)V
    .locals 1
    .param p1, "deleteState"    # Z

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->teardown(Z)V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    goto :goto_0
.end method

.method public trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/adjust/sdk/AdjustEvent;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    goto :goto_0
.end method
