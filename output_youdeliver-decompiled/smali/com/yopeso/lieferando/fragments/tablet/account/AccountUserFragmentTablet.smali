.class public Lcom/yopeso/lieferando/fragments/tablet/account/AccountUserFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;
.source "AccountUserFragmentTablet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/yopeso/lieferando/events/ChangedProfilePhotoEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/yopeso/lieferando/events/ChangedProfilePhotoEvent;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/account/AccountUserFragmentTablet;->loadUserPhoto()V

    .line 27
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/FavoriteRemovedEvent;)V
    .locals 0
    .param p1, "r"    # Lcom/yopeso/lieferando/events/FavoriteRemovedEvent;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/account/AccountUserFragmentTablet;->updateFavouriteCount()V

    .line 35
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/FavouriteAddEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/yopeso/lieferando/events/FavouriteAddEvent;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/account/AccountUserFragmentTablet;->updateFavouriteCount()V

    .line 31
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 23
    return-void
.end method
