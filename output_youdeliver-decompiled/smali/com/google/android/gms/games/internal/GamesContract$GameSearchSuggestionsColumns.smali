.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$GameSearchSuggestionsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GameSearchSuggestionsColumns"
.end annotation


# static fields
.field public static final zzauj:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "suggestion"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$GameSearchSuggestionsColumns;->zzauj:[Ljava/lang/String;

    return-void
.end method
