.class Lcom/adjust/sdk/ActivityHandler$5;
.super Ljava/lang/Object;
.source "ActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->setEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$5;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-boolean p2, p0, Lcom/adjust/sdk/ActivityHandler$5;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$5;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$900(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ActivityState;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityHandler$5;->val$enabled:Z

    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 318
    return-void
.end method
