.class public final Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
.super Ljava/lang/Object;
.source "PaymentSettingsUtil.java"


# static fields
.field private static sInstance:Lcom/yopeso/lieferando/util/PaymentSettingsUtil;


# instance fields
.field private mSettings:Lcom/yopeso/lieferando/model/SettingsContent;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/model/SettingsContent;)V
    .locals 0
    .param p1, "settings"    # Lcom/yopeso/lieferando/model/SettingsContent;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->mSettings:Lcom/yopeso/lieferando/model/SettingsContent;

    .line 30
    return-void
.end method

.method public static getInstance(Lcom/yopeso/lieferando/model/SettingsContent;)Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    .locals 3
    .param p0, "setting"    # Lcom/yopeso/lieferando/model/SettingsContent;

    .prologue
    .line 21
    const-class v0, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v0, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->sInstance:Lcom/yopeso/lieferando/util/PaymentSettingsUtil;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;-><init>(Lcom/yopeso/lieferando/model/SettingsContent;)V

    sput-object v0, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->sInstance:Lcom/yopeso/lieferando/util/PaymentSettingsUtil;

    .line 25
    :cond_0
    sget-object v0, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->sInstance:Lcom/yopeso/lieferando/util/PaymentSettingsUtil;

    return-object v0
.end method


# virtual methods
.method public isCashAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z
    .locals 1
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isAllowCash()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->mSettings:Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->isCashEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClickAndBuyAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z
    .locals 1
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnlyCash()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->mSettings:Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->isClicknBuyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCreditAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z
    .locals 1
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnlyCash()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->mSettings:Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->isCardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isECAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z
    .locals 1
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->hasECPayment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->mSettings:Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->isECEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEbankingAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z
    .locals 1
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnlyCash()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->mSettings:Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->isEbankingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPayUAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z
    .locals 1
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnlyCash()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->mSettings:Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->isPayUEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaypalAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z
    .locals 1
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOnlyCash()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->mSettings:Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->isPaypalEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onlyCashAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z
    .locals 1
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCashAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPaypalAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCreditAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isEbankingAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isClickAndBuyAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onlyOnlineAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z
    .locals 1
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPaypalAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCreditAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isEbankingAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isClickAndBuyAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCashAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
