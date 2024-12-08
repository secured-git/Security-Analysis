.class Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener$1;
.super Ljava/lang/Object;
.source "ProposeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;->onResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener$1;->this$1:Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 225
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 226
    return-void
.end method
