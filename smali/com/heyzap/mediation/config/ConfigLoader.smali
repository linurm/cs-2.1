.class public interface abstract Lcom/heyzap/mediation/config/ConfigLoader;
.super Ljava/lang/Object;
.source "ConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;
    }
.end annotation


# virtual methods
.method public abstract get(Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;)V
.end method

.method public abstract getFuture()Lcom/heyzap/common/concurrency/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/common/concurrency/ListenableFuture",
            "<",
            "Lcom/heyzap/mediation/config/MediationConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract start()V
.end method
