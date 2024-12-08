.class public final Lcom/yopeso/lieferando/util/VoucherStore;
.super Ljava/lang/Object;
.source "VoucherStore.java"


# static fields
.field private static final DAY:I = 0x5265c00

.field private static final VOUCHERS_KEY:Ljava/lang/String; = "vouchers_sp_key"

.field private static sInstance:Lcom/yopeso/lieferando/util/VoucherStore;


# instance fields
.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/util/VoucherStore;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 34
    return-void
.end method

.method private getAvailableVouchers()Ljava/util/TreeSet;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/yopeso/lieferando/model/user/BonusVoucher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v6, p0, Lcom/yopeso/lieferando/util/VoucherStore;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v7, "vouchers_sp_key"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "voucherSerialized":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 47
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 70
    :goto_0
    return-object v4

    .line 50
    :cond_0
    :try_start_0
    invoke-static {v3}, Lcom/yopeso/lieferando/util/SerializeUtils;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeSet;

    .line 51
    .local v4, "vouchers":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/yopeso/lieferando/model/user/BonusVoucher;>;"
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 52
    .local v5, "vouchersToRemove":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/yopeso/lieferando/model/user/BonusVoucher;>;"
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 53
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 58
    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 60
    invoke-direct {p0, v4}, Lcom/yopeso/lieferando/util/VoucherStore;->saveVouchers(Ljava/util/TreeSet;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 63
    .end local v0    # "date":Ljava/util/Date;
    .end local v4    # "vouchers":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/yopeso/lieferando/model/user/BonusVoucher;>;"
    .end local v5    # "vouchersToRemove":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/yopeso/lieferando/model/user/BonusVoucher;>;"
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/io/StreamCorruptedException;
    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    .line 70
    .end local v1    # "e":Ljava/io/StreamCorruptedException;
    :goto_2
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    goto :goto_0

    .line 53
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v4    # "vouchers":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/yopeso/lieferando/model/user/BonusVoucher;>;"
    .restart local v5    # "vouchersToRemove":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/yopeso/lieferando/model/user/BonusVoucher;>;"
    :cond_2
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/BonusVoucher;

    .line 54
    .local v2, "voucher":Lcom/yopeso/lieferando/model/user/BonusVoucher;
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/BonusVoucher;->getExpiration()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 55
    invoke-virtual {v5, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 65
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "voucher":Lcom/yopeso/lieferando/model/user/BonusVoucher;
    .end local v4    # "vouchers":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/yopeso/lieferando/model/user/BonusVoucher;>;"
    .end local v5    # "vouchersToRemove":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/yopeso/lieferando/model/user/BonusVoucher;>;"
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 67
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yopeso/lieferando/util/VoucherStore;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v0, Lcom/yopeso/lieferando/util/VoucherStore;->sInstance:Lcom/yopeso/lieferando/util/VoucherStore;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/yopeso/lieferando/util/VoucherStore;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/util/VoucherStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yopeso/lieferando/util/VoucherStore;->sInstance:Lcom/yopeso/lieferando/util/VoucherStore;

    .line 40
    :cond_0
    sget-object v0, Lcom/yopeso/lieferando/util/VoucherStore;->sInstance:Lcom/yopeso/lieferando/util/VoucherStore;

    return-object v0
.end method

.method private saveVouchers(Ljava/util/TreeSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/yopeso/lieferando/model/user/BonusVoucher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "vouchers":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/yopeso/lieferando/model/user/BonusVoucher;>;"
    :try_start_0
    invoke-static {p1}, Lcom/yopeso/lieferando/util/SerializeUtils;->toString(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "vouchersSerialized":Ljava/lang/String;
    iget-object v2, p0, Lcom/yopeso/lieferando/util/VoucherStore;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "vouchers_sp_key"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1    # "vouchersSerialized":Ljava/lang/String;
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addVoucher(Lcom/yopeso/lieferando/model/user/BonusVoucher;)V
    .locals 1
    .param p1, "voucher"    # Lcom/yopeso/lieferando/model/user/BonusVoucher;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/yopeso/lieferando/util/VoucherStore;->getAvailableVouchers()Ljava/util/TreeSet;

    move-result-object v0

    .line 81
    .local v0, "vouchers":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/yopeso/lieferando/model/user/BonusVoucher;>;"
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/util/VoucherStore;->saveVouchers(Ljava/util/TreeSet;)V

    .line 83
    return-void
.end method

.method public getAllVouchers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/BonusVoucher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/yopeso/lieferando/util/VoucherStore;->getAvailableVouchers()Ljava/util/TreeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public removeVoucher(Ljava/lang/String;)V
    .locals 5
    .param p1, "voucher"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/yopeso/lieferando/util/VoucherStore;->getAvailableVouchers()Ljava/util/TreeSet;

    move-result-object v2

    .line 92
    .local v2, "vouchers":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/yopeso/lieferando/model/user/BonusVoucher;>;"
    const/4 v0, 0x0

    .line 93
    .local v0, "toRemove":Lcom/yopeso/lieferando/model/user/BonusVoucher;
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 99
    :goto_0
    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 102
    :cond_1
    invoke-direct {p0, v2}, Lcom/yopeso/lieferando/util/VoucherStore;->saveVouchers(Ljava/util/TreeSet;)V

    .line 103
    return-void

    .line 93
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/BonusVoucher;

    .line 94
    .local v1, "v":Lcom/yopeso/lieferando/model/user/BonusVoucher;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/BonusVoucher;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    move-object v0, v1

    .line 96
    goto :goto_0
.end method
