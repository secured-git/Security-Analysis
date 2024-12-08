.class Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment$1;
.super Landroid/webkit/WebViewClient;
.source "RestaurantInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantInfoFragment;

    .line 109
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    return v0
.end method
