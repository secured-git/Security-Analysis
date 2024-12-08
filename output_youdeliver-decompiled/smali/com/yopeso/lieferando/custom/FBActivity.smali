.class public abstract Lcom/yopeso/lieferando/custom/FBActivity;
.super Lcom/yopeso/lieferando/custom/LRActivity;
.source "FBActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;
.implements Lcom/yopeso/lieferando/callback/FacebookLoginCallback;


# static fields
.field private static synthetic $SWITCH_TABLE$com$facebook$SessionState:[I

.field protected static final PERMISSIONS:[Ljava/lang/String;

.field protected static final READ_PERMISSIONS:[Ljava/lang/String;


# instance fields
.field protected hasAsked:Z

.field private lastState:Lcom/facebook/SessionState;

.field private uiHelper:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method static synthetic $SWITCH_TABLE$com$facebook$SessionState()[I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/yopeso/lieferando/custom/FBActivity;->$SWITCH_TABLE$com$facebook$SessionState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/SessionState;->values()[Lcom/facebook/SessionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/yopeso/lieferando/custom/FBActivity;->$SWITCH_TABLE$com$facebook$SessionState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/yopeso/lieferando/custom/FBActivity;->PERMISSIONS:[Ljava/lang/String;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "email"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "public_profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yopeso/lieferando/custom/FBActivity;->READ_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/custom/FBActivity;->hasAsked:Z

    .line 33
    return-void
.end method

.method private onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 7
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x0

    .line 166
    const-class v3, Lcom/yopeso/lieferando/custom/FBActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSessionStateChange"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v3, p0, Lcom/yopeso/lieferando/custom/FBActivity;->lastState:Lcom/facebook/SessionState;

    if-ne p2, v3, :cond_0

    .line 169
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/yopeso/lieferando/custom/FBActivity;->lastState:Lcom/facebook/SessionState;

    .line 230
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/FBActivity;->dismissLoadingIndicator()V

    .line 231
    return-void

    .line 172
    :cond_0
    iput-object p2, p0, Lcom/yopeso/lieferando/custom/FBActivity;->lastState:Lcom/facebook/SessionState;

    .line 173
    invoke-static {}, Lcom/yopeso/lieferando/custom/FBActivity;->$SWITCH_TABLE$com$facebook$SessionState()[I

    move-result-object v3

    invoke-virtual {p2}, Lcom/facebook/SessionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 225
    const-class v3, Lcom/yopeso/lieferando/custom/FBActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEFAULT !!!->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :pswitch_0
    const-class v3, Lcom/yopeso/lieferando/custom/FBActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPENED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/FBActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getWriteFacebookPermissions()Ljava/util/List;

    move-result-object v2

    .line 177
    .local v2, "writePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 179
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    :goto_1
    iget-boolean v3, p0, Lcom/yopeso/lieferando/custom/FBActivity;->hasAsked:Z

    if-nez v3, :cond_3

    .line 186
    invoke-virtual {p1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/yopeso/lieferando/util/HttpUtils;->containsPermissions(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 187
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/yopeso/lieferando/custom/FBActivity;->hasAsked:Z

    .line 188
    new-instance v0, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-direct {v0, p0, v1}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 189
    .local v0, "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    invoke-virtual {v0, p0}, Lcom/facebook/Session$NewPermissionsRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$NewPermissionsRequest;

    .line 190
    invoke-virtual {p1, v0}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_0

    .line 181
    .end local v0    # "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    :cond_1
    sget-object v3, Lcom/yopeso/lieferando/custom/FBActivity;->PERMISSIONS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 192
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/custom/FBActivity;->doFacebookLogin(Ljava/lang/String;)V

    .line 193
    iput-boolean v6, p0, Lcom/yopeso/lieferando/custom/FBActivity;->hasAsked:Z

    goto/16 :goto_0

    .line 196
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/custom/FBActivity;->doFacebookLogin(Ljava/lang/String;)V

    .line 197
    iput-boolean v6, p0, Lcom/yopeso/lieferando/custom/FBActivity;->hasAsked:Z

    goto/16 :goto_0

    .line 202
    .end local v1    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "writePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    const-class v3, Lcom/yopeso/lieferando/custom/FBActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CLOSED_LOGIN_FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget v3, Lcom/yopeso/lieferando/R$string;->facebook_login_not_succesfull:I

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 208
    :pswitch_2
    const-class v3, Lcom/yopeso/lieferando/custom/FBActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CLOSED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 211
    :pswitch_3
    const-class v3, Lcom/yopeso/lieferando/custom/FBActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CREATED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    :pswitch_4
    const-class v3, Lcom/yopeso/lieferando/custom/FBActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CREATED_TOKEN_LOADED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 217
    :pswitch_5
    const-class v3, Lcom/yopeso/lieferando/custom/FBActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPENED_TOKEN_UPDATED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/custom/FBActivity;->doFacebookLogin(Ljava/lang/String;)V

    .line 219
    iput-boolean v6, p0, Lcom/yopeso/lieferando/custom/FBActivity;->hasAsked:Z

    goto/16 :goto_0

    .line 222
    :pswitch_6
    const-class v3, Lcom/yopeso/lieferando/custom/FBActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPENING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/yopeso/lieferando/custom/FBActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 158
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/yopeso/lieferando/custom/LRActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 49
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/FBActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 50
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 53
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 60
    .local v0, "session":Lcom/facebook/Session;
    if-nez v0, :cond_2

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-static {p0, v1, v1, p1}, Lcom/facebook/Session;->restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;

    move-result-object v0

    .line 64
    :cond_0
    if-nez v0, :cond_1

    .line 65
    new-instance v0, Lcom/facebook/Session;

    .end local v0    # "session":Lcom/facebook/Session;
    invoke-direct {v0, p0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 67
    .restart local v0    # "session":Lcom/facebook/Session;
    :cond_1
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 69
    :cond_2
    new-instance v1, Lcom/facebook/UiLifecycleHelper;

    invoke-direct {v1, p0, p0}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/custom/FBActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 70
    iget-object v1, p0, Lcom/yopeso/lieferando/custom/FBActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v1, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->onDestroy()V

    .line 113
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/FBActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 114
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/FBActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->onResume()V

    .line 96
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 97
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yopeso/lieferando/custom/FBActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/custom/FBActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v1}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 102
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const-string v0, "WORKAROUND_FOR_BUG_19917_KEY"

    const-string v1, "WORKAROUND_FOR_BUG_19917_VALUE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/FBActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->onStart()V

    .line 85
    const-class v0, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRActivity;->onStop()V

    .line 119
    const-class v0, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 123
    :cond_0
    return-void
.end method

.method public requireFBLogin()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 132
    const-class v3, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "requireFBLogin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 134
    .local v2, "session":Lcom/facebook/Session;
    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/facebook/Session;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/yopeso/lieferando/custom/FBActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getReadFacebookPermissions()Ljava/util/List;

    move-result-object v1

    .line 137
    .local v1, "readPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    const-class v3, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getApplicationCore().getSettingsModel().getReadFacebookPermissions()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v3, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v3, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, p0}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    .line 140
    .local v0, "openRequest":Lcom/facebook/Session$OpenRequest;
    invoke-virtual {v0, v1}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 141
    invoke-virtual {v2, v0}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 153
    .end local v0    # "openRequest":Lcom/facebook/Session$OpenRequest;
    .end local v1    # "readPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 143
    .restart local v1    # "readPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-class v3, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Arrays.asList(READ_PERMISSIONS)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v3, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v3, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, p0}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    .line 145
    .restart local v0    # "openRequest":Lcom/facebook/Session$OpenRequest;
    sget-object v3, Lcom/yopeso/lieferando/custom/FBActivity;->READ_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 146
    invoke-virtual {v2, v0}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_0

    .line 150
    .end local v0    # "openRequest":Lcom/facebook/Session$OpenRequest;
    .end local v1    # "readPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-class v3, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Session.openActiveSession(this, true, this);"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v3, 0x1

    invoke-static {p0, v3, p0}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto :goto_0
.end method
