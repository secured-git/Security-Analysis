.class Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;
.super Ljava/lang/Object;
.source "MainAccountFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomerUpdateListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V
    .locals 0

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;)V
    .locals 0

    .prologue
    .line 1141
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$27(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Lcom/android/volley/VolleyError;)V

    .line 1161
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$20(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    .line 1162
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1144
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$20(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    .line 1145
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0, v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$21(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Z)V

    .line 1146
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$22(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Z)V

    .line 1148
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 1149
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$23(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    .line 1150
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$24(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    .line 1151
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$25(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0, v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$26(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Z)V

    .line 1154
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 1156
    :cond_0
    return-void
.end method
