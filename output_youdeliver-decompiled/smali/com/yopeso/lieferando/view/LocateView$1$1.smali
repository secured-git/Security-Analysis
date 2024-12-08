.class Lcom/yopeso/lieferando/view/LocateView$1$1;
.super Ljava/lang/Object;
.source "LocateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/view/LocateView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/view/LocateView$1;

.field private final synthetic val$isTablet:Z


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/view/LocateView$1;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/view/LocateView$1$1;->this$1:Lcom/yopeso/lieferando/view/LocateView$1;

    iput-boolean p2, p0, Lcom/yopeso/lieferando/view/LocateView$1$1;->val$isTablet:Z

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/yopeso/lieferando/view/LocateView$1$1;->val$isTablet:Z

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView$1$1;->this$1:Lcom/yopeso/lieferando/view/LocateView$1;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/LocateView$1;->access$0(Lcom/yopeso/lieferando/view/LocateView$1;)Lcom/yopeso/lieferando/view/LocateView;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/view/LocateView;->access$0(Lcom/yopeso/lieferando/view/LocateView;)Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;->SEARCHING:Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView$1$1;->this$1:Lcom/yopeso/lieferando/view/LocateView$1;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/LocateView$1;->access$0(Lcom/yopeso/lieferando/view/LocateView$1;)Lcom/yopeso/lieferando/view/LocateView;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->location_searching:I

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/LocateView;->setImageResource(I)V

    .line 66
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView$1$1;->this$1:Lcom/yopeso/lieferando/view/LocateView$1;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/LocateView$1;->access$0(Lcom/yopeso/lieferando/view/LocateView$1;)Lcom/yopeso/lieferando/view/LocateView;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->location_found:I

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/LocateView;->setImageResource(I)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView$1$1;->this$1:Lcom/yopeso/lieferando/view/LocateView$1;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/LocateView$1;->access$0(Lcom/yopeso/lieferando/view/LocateView$1;)Lcom/yopeso/lieferando/view/LocateView;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/view/LocateView;->access$0(Lcom/yopeso/lieferando/view/LocateView;)Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;->SEARCHING:Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

    if-ne v0, v1, :cond_2

    .line 61
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView$1$1;->this$1:Lcom/yopeso/lieferando/view/LocateView$1;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/LocateView$1;->access$0(Lcom/yopeso/lieferando/view/LocateView$1;)Lcom/yopeso/lieferando/view/LocateView;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->location_icon_pressed:I

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/LocateView;->setImageResource(I)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView$1$1;->this$1:Lcom/yopeso/lieferando/view/LocateView$1;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/LocateView$1;->access$0(Lcom/yopeso/lieferando/view/LocateView$1;)Lcom/yopeso/lieferando/view/LocateView;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->location_icon:I

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/LocateView;->setImageResource(I)V

    goto :goto_0
.end method
