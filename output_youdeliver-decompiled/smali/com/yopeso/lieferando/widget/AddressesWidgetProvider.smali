.class public Lcom/yopeso/lieferando/widget/AddressesWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "AddressesWidgetProvider.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field public static final UPDATE_ACTION:Ljava/lang/String; = "com.yopeso.lieferando.widget.UPDATE_ADDRESSES"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 68
    const-string v2, "com.yopeso.lieferando.widget.UPDATE_ADDRESSES"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 70
    .local v1, "widgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/yopeso/lieferando/widget/AddressesWidgetProvider;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 71
    .local v0, "allWidgets":[I
    array-length v2, v0

    if-lez v2, :cond_0

    .line 72
    sget v2, Lcom/yopeso/lieferando/R$id;->widgetAddressesListView:I

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 75
    .end local v0    # "allWidgets":[I
    .end local v1    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p3

    if-lt v0, v5, :cond_0

    .line 61
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 63
    return-void

    .line 31
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/yopeso/lieferando/widget/AddressWidgetService;

    invoke-direct {v1, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "appWidgetId"

    aget v6, p3, v0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 37
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$layout;->addresses_widget_layout:I

    invoke-direct {v2, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 38
    .local v2, "rv":Landroid/widget/RemoteViews;
    aget v5, p3, v0

    sget v6, Lcom/yopeso/lieferando/R$id;->widgetAddressesListView:I

    invoke-virtual {v2, v5, v6, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 47
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v4, "searchRestIntent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 49
    const-class v5, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    invoke-virtual {v4, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    :goto_1
    const-string v5, "rest_list_action"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const/high16 v5, 0x24000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 56
    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {p1, v5, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 57
    .local v3, "searchPendingIntent":Landroid/app/PendingIntent;
    sget v5, Lcom/yopeso/lieferando/R$id;->widgetAddressesListView:I

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 59
    aget v5, p3, v0

    invoke-virtual {p2, v5, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v3    # "searchPendingIntent":Landroid/app/PendingIntent;
    :cond_1
    const-class v5, Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-virtual {v4, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method
