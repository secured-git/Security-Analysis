.class final enum Lcom/facebook/internal/LikeActionController$LikeDialogFeature;
.super Ljava/lang/Enum;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$DialogFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LikeDialogFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/internal/LikeActionController$LikeDialogFeature;",
        ">;",
        "Lcom/facebook/widget/FacebookDialog$DialogFeature;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/facebook/internal/LikeActionController$LikeDialogFeature;

.field public static final enum LIKE_DIALOG:Lcom/facebook/internal/LikeActionController$LikeDialogFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1337
    new-instance v0, Lcom/facebook/internal/LikeActionController$LikeDialogFeature;

    const-string v1, "LIKE_DIALOG"

    const v2, 0x133529d

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/internal/LikeActionController$LikeDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/LikeActionController$LikeDialogFeature;->LIKE_DIALOG:Lcom/facebook/internal/LikeActionController$LikeDialogFeature;

    .line 1335
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/internal/LikeActionController$LikeDialogFeature;

    sget-object v1, Lcom/facebook/internal/LikeActionController$LikeDialogFeature;->LIKE_DIALOG:Lcom/facebook/internal/LikeActionController$LikeDialogFeature;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/internal/LikeActionController$LikeDialogFeature;->ENUM$VALUES:[Lcom/facebook/internal/LikeActionController$LikeDialogFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "minVersion"    # I

    .prologue
    .line 1341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1342
    iput p3, p0, Lcom/facebook/internal/LikeActionController$LikeDialogFeature;->minVersion:I

    .line 1343
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/LikeActionController$LikeDialogFeature;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/facebook/internal/LikeActionController$LikeDialogFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/LikeActionController$LikeDialogFeature;

    return-object v0
.end method

.method public static values()[Lcom/facebook/internal/LikeActionController$LikeDialogFeature;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/facebook/internal/LikeActionController$LikeDialogFeature;->ENUM$VALUES:[Lcom/facebook/internal/LikeActionController$LikeDialogFeature;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/internal/LikeActionController$LikeDialogFeature;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1346
    const-string v0, "com.facebook.platform.action.request.LIKE_DIALOG"

    return-object v0
.end method

.method public getMinVersion()I
    .locals 1

    .prologue
    .line 1350
    iget v0, p0, Lcom/facebook/internal/LikeActionController$LikeDialogFeature;->minVersion:I

    return v0
.end method
