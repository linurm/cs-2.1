.class Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;
.super Ljava/lang/Object;
.source "VungleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayHolder"
.end annotation


# instance fields
.field public final adUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field public final clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/lifecycle/EventStream",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final closeListener:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/lifecycle/EventStream",
            "<",
            "Lcom/heyzap/common/lifecycle/DisplayResult;",
            ">;"
        }
    .end annotation
.end field

.field public final incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;
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
.method private constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 1

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-static {}, Lcom/heyzap/common/lifecycle/EventStream;->create()Lcom/heyzap/common/lifecycle/EventStream;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 269
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 270
    invoke-static {}, Lcom/heyzap/common/lifecycle/EventStream;->create()Lcom/heyzap/common/lifecycle/EventStream;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 271
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 274
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;-><init>(Lcom/heyzap/internal/Constants$AdUnit;)V

    return-void
.end method
