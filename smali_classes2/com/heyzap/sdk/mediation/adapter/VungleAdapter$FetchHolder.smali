.class Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;
.super Ljava/lang/Object;
.source "VungleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchHolder"
.end annotation


# instance fields
.field public final fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/common/lifecycle/FetchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;)V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;-><init>()V

    return-void
.end method
