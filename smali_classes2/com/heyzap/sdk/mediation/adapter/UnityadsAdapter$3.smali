.class Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$3;
.super Ljava/lang/Object;
.source "UnityadsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->start(Ljava/util/Collection;)Lcom/heyzap/common/concurrency/SettableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 239
    return-void
.end method
