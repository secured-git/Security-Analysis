.class public final Lcom/google/android/gms/wallet/FullWallet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/FullWallet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field zzaWi:Ljava/lang/String;

.field zzaWj:Ljava/lang/String;

.field zzaWk:Lcom/google/android/gms/wallet/ProxyCard;

.field zzaWl:Ljava/lang/String;

.field zzaWm:Lcom/google/android/gms/wallet/Address;

.field zzaWn:Lcom/google/android/gms/wallet/Address;

.field zzaWo:[Ljava/lang/String;

.field zzaWp:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field zzaWq:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field zzaWr:[Lcom/google/android/gms/wallet/InstrumentInfo;

.field zzaWs:Lcom/google/android/gms/wallet/PaymentMethodToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zze;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/FullWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/FullWallet;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/ProxyCard;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;Lcom/google/android/gms/wallet/PaymentMethodToken;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "googleTransactionId"    # Ljava/lang/String;
    .param p3, "merchantTransactionId"    # Ljava/lang/String;
    .param p4, "proxyCard"    # Lcom/google/android/gms/wallet/ProxyCard;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "billingAddress"    # Lcom/google/android/gms/wallet/Address;
    .param p7, "shippingAddress"    # Lcom/google/android/gms/wallet/Address;
    .param p8, "paymentDescriptions"    # [Ljava/lang/String;
    .param p9, "buyerBillingAddress"    # Lcom/google/android/gms/identity/intents/model/UserAddress;
    .param p10, "buyerShippingAddress"    # Lcom/google/android/gms/identity/intents/model/UserAddress;
    .param p11, "instrumentInfos"    # [Lcom/google/android/gms/wallet/InstrumentInfo;
    .param p12, "paymentMethodToken"    # Lcom/google/android/gms/wallet/PaymentMethodToken;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/FullWallet;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWi:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWj:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWk:Lcom/google/android/gms/wallet/ProxyCard;

    iput-object p5, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWl:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWm:Lcom/google/android/gms/wallet/Address;

    iput-object p7, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWn:Lcom/google/android/gms/wallet/Address;

    iput-object p8, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWo:[Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWp:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p10, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWq:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p11, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWr:[Lcom/google/android/gms/wallet/InstrumentInfo;

    iput-object p12, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWs:Lcom/google/android/gms/wallet/PaymentMethodToken;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBillingAddress()Lcom/google/android/gms/wallet/Address;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWm:Lcom/google/android/gms/wallet/Address;

    return-object v0
.end method

.method public getBuyerBillingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWp:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object v0
.end method

.method public getBuyerShippingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWq:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWl:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWi:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentInfos()[Lcom/google/android/gms/wallet/InstrumentInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWr:[Lcom/google/android/gms/wallet/InstrumentInfo;

    return-object v0
.end method

.method public getMerchantTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWj:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentDescriptions()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWo:[Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodToken()Lcom/google/android/gms/wallet/PaymentMethodToken;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWs:Lcom/google/android/gms/wallet/PaymentMethodToken;

    return-object v0
.end method

.method public getProxyCard()Lcom/google/android/gms/wallet/ProxyCard;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWk:Lcom/google/android/gms/wallet/ProxyCard;

    return-object v0
.end method

.method public getShippingAddress()Lcom/google/android/gms/wallet/Address;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->zzaWn:Lcom/google/android/gms/wallet/Address;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/FullWallet;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zze;->zza(Lcom/google/android/gms/wallet/FullWallet;Landroid/os/Parcel;I)V

    return-void
.end method
