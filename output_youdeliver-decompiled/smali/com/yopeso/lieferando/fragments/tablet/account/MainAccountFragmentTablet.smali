.class public Lcom/yopeso/lieferando/fragments/tablet/account/MainAccountFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;
.source "MainAccountFragmentTablet.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 16
    return-void
.end method
