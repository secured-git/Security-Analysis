.class public Lcom/facebook/widget/FacebookDialog$VideoShareDialogBuilder;
.super Lcom/facebook/widget/FacebookDialog$VideoDialogBuilderBase;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoShareDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/FacebookDialog$VideoDialogBuilderBase",
        "<",
        "Lcom/facebook/widget/FacebookDialog$VideoShareDialogBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1307
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$VideoDialogBuilderBase;-><init>(Landroid/app/Activity;)V

    .line 1308
    return-void
.end method


# virtual methods
.method public bridge synthetic addVideoFile(Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$VideoDialogBuilderBase;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$VideoDialogBuilderBase;->addVideoFile(Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$VideoDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method protected getDialogFeatures()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1312
    sget-object v0, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    sget-object v1, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->VIDEO:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPlace(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$VideoDialogBuilderBase;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$VideoDialogBuilderBase;->setPlace(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$VideoDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method
