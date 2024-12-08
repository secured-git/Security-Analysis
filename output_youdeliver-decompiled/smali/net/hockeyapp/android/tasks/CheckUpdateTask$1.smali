.class Lnet/hockeyapp/android/tasks/CheckUpdateTask$1;
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


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/tasks/CheckUpdateTask;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$1;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$1;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-static {v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->access$000(Lnet/hockeyapp/android/tasks/CheckUpdateTask;)V

    .line 300
    return-void
.end method
