.class Lcom/heyzap/mediation/config/MediationConfigLoader$2;
.super Ljava/lang/Object;
.source "MediationConfigLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/config/MediationConfigLoader;->get(Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

.field final synthetic val$configListener:Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/config/MediationConfigLoader;Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$2;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    iput-object p2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$2;->val$configListener:Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$2;->val$configListener:Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;

    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$2;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-static {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$200(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/config/MediationConfig;

    invoke-interface {v1, v0}, Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;->onConfigLoaded(Lcom/heyzap/mediation/config/MediationConfig;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    .line 157
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
