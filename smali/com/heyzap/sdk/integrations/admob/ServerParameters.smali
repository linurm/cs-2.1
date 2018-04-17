.class public Lcom/heyzap/sdk/integrations/admob/ServerParameters;
.super Lcom/google/ads/mediation/MediationServerParameters;
.source "ServerParameters.java"


# instance fields
.field public publisherId:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/MediationServerParameters$Parameter;
        name = "publisher_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/google/ads/mediation/MediationServerParameters;-><init>()V

    return-void
.end method
