.class public Lcom/yopeso/lieferando/widget/AddressWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "AddressWidgetService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    new-instance v0, Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/widget/AddressWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;-><init>(Lcom/yopeso/lieferando/widget/AddressWidgetService;Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
