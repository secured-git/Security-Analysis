.class final enum Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;
.super Ljava/lang/Enum;
.source "KahunaIBeaconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/location/KahunaIBeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScanState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

.field public static final enum NOT_SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

.field public static final enum SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    const-string v1, "SCANNING"

    invoke-direct {v0, v1, v2}, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    .line 45
    new-instance v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    const-string v1, "NOT_SCANNING"

    invoke-direct {v0, v1, v3}, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->NOT_SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->NOT_SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->$VALUES:[Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    return-object v0
.end method

.method public static values()[Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->$VALUES:[Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    invoke-virtual {v0}, [Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    return-object v0
.end method
