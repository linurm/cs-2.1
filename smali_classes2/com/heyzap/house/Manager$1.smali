.class final Lcom/heyzap/house/Manager$1;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/Manager;->start(Lcom/heyzap/internal/ContextReference;Ljava/lang/String;)Lcom/heyzap/common/concurrency/SettableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/heyzap/house/Manager;->access$000()Lcom/heyzap/house/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/Manager;->getFileCache()Lcom/heyzap/common/cache/FileCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/common/cache/FileCache;->flush()Lcom/heyzap/common/concurrency/SettableFuture;

    .line 112
    return-void
.end method
