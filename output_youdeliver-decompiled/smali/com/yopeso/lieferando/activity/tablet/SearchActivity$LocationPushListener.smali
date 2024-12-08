.class Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/activity/tablet/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationPushListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/LocationSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;)V
    .locals 0

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;-><init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 809
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 1
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 804
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 805
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$LocationPushListener;->onResponse(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    return-void
.end method
