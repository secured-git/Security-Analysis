.class Lnet/hockeyapp/android/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackActivity;->resetFeedbackView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/FeedbackActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$1;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity$1;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/hockeyapp/android/utils/PrefsUtil;->saveFeedbackTokenToPrefs(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$1;->this$0:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->configureFeedbackView(Z)V

    .line 159
    return-void
.end method
