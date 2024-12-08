.class public Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;
.source "FavoriteFragmentTablet.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/tablet/account/FavoriteFragmentTablet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/favorite/FavoriteFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 22
    return-void
.end method
