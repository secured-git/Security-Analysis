.class Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;
.super Ljava/lang/Object;
.source "CheckUpdateTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/tasks/CheckUpdateTask;->showDialog(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

.field final synthetic val$updateInfo:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/tasks/CheckUpdateTask;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    iput-object p2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->val$updateInfo:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 305
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getCachingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-static {v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->access$100(Lnet/hockeyapp/android/tasks/CheckUpdateTask;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "[]"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/VersionCache;->setVersionInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-static {v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->access$100(Lnet/hockeyapp/android/tasks/CheckUpdateTask;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 310
    .local v0, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-static {}, Lnet/hockeyapp/android/UpdateManager;->fragmentsSupported()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lnet/hockeyapp/android/UpdateManager;->runsOnTablet(Ljava/lang/ref/WeakReference;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->val$updateInfo:Lorg/json/JSONArray;

    invoke-static {v1, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->access$200(Lnet/hockeyapp/android/tasks/CheckUpdateTask;Lorg/json/JSONArray;)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->val$updateInfo:Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->access$300(Lnet/hockeyapp/android/tasks/CheckUpdateTask;Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
