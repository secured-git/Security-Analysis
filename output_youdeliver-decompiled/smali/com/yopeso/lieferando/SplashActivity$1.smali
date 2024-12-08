.class Lcom/yopeso/lieferando/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/SplashActivity;->performConfigRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/SplashActivity;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/SplashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/SplashActivity$1;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/yopeso/lieferando/SplashActivity$1;->this$0:Lcom/yopeso/lieferando/SplashActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/SplashActivity;->access$6(Lcom/yopeso/lieferando/SplashActivity;)V

    .line 212
    return-void
.end method
