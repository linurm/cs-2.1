.class public interface abstract Lcom/heyzap/mediation/display/Mediator;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;
    }
.end annotation


# virtual methods
.method public abstract mediate(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/concurrency/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/mediation/request/MediationRequest;",
            ")",
            "Lcom/heyzap/common/concurrency/ListenableFuture",
            "<",
            "Lcom/heyzap/mediation/MediationResult;",
            ">;"
        }
    .end annotation
.end method
