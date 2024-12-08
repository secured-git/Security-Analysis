.class public Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;
.super Ljava/lang/Object;
.source "AddressWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/widget/AddressWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListRemoteViewsFactory"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Location;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yopeso/lieferando/widget/AddressWidgetService;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/widget/AddressWidgetService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;->this$0:Lcom/yopeso/lieferando/widget/AddressWidgetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    .line 47
    .local v0, "user":Lcom/yopeso/lieferando/model/user/UserData;
    if-nez v0, :cond_0

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;->mData:Ljava/util/List;

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;->mData:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v3, p0, Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;->mData:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    .line 72
    .local v0, "address":Lcom/yopeso/lieferando/model/user/Location;
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$layout;->address_widget_list_item:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 73
    .local v2, "rv":Landroid/widget/RemoteViews;
    sget v3, Lcom/yopeso/lieferando/R$id;->addressLine1:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 74
    sget v3, Lcom/yopeso/lieferando/R$id;->addressLine2:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    sget v3, Lcom/yopeso/lieferando/R$id;->addressLine3:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 77
    sget v3, Lcom/yopeso/lieferando/R$id;->addressLine3:I

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->addressFloor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 82
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "key_location"

    new-instance v4, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-direct {v4, v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;-><init>(Lcom/yopeso/lieferando/model/user/Location;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    sget v3, Lcom/yopeso/lieferando/R$id;->addressWidgetLayout:I

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 86
    return-object v2

    .line 79
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    sget v3, Lcom/yopeso/lieferando/R$id;->addressLine3:I

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;->initData()V

    .line 42
    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;->initData()V

    .line 102
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yopeso/lieferando/widget/AddressWidgetService$ListRemoteViewsFactory;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    return-void
.end method
