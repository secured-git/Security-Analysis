.class Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$1;
.super Landroid/webkit/WebViewClient;
.source "RestaurantInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    .line 165
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method
