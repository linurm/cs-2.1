.class public Lcom/heyzap/common/lifecycle/AdDisplay;
.super Ljava/lang/Object;
.source "AdDisplay.java"


# instance fields
.field public clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/lifecycle/EventStream",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public closeListener:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/lifecycle/EventStream",
            "<",
            "Lcom/heyzap/common/lifecycle/DisplayResult;",
            ">;"
        }
    .end annotation
.end field

.field public incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Lcom/heyzap/common/lifecycle/EventStream;->create()Lcom/heyzap/common/lifecycle/EventStream;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 7
    invoke-static {}, Lcom/heyzap/common/lifecycle/EventStream;->create()Lcom/heyzap/common/lifecycle/EventStream;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 8
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/lifecycle/AdDisplay;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 9
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/lifecycle/AdDisplay;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    return-void
.end method
