.class public Lcom/immersion/content/EndpointWarp;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String; = "EndpointWarp"


# instance fields
.field a:J


# direct methods
.method public constructor <init>(Landroid/content/Context;BBBBISB[BB)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct/range {p0 .. p10}, Lcom/immersion/content/EndpointWarp;->create(Landroid/content/Context;BBBBISB[BB)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/content/EndpointWarp;->createWarp(Landroid/content/Context;[BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    return-void
.end method

.method private native create(Landroid/content/Context;BBBBISB[BB)J
.end method

.method private native createWarp(Landroid/content/Context;[BI)J
.end method

.method private native disposeWarp(J)V
.end method

.method private native flushWarp(J)V
.end method

.method private native getWarpCurrentPosition(J)J
.end method

.method public static loadSharedLibrary()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "ImmEndpointWarpJ"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "java.vm.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Java HotSpot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "EndpointWarp"

    const-string v2, "Unable to load libImmEndpointWarpJ.so.Please make sure this file is in the libs/armeabi folder."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native startWarp(J)V
.end method

.method private native stopWarp(J)V
.end method

.method private native updateWarp(J[BIJJ)V
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/EndpointWarp;->disposeWarp(J)V

    return-void
.end method

.method public flush()V
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/EndpointWarp;->flushWarp(J)V

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/EndpointWarp;->getWarpCurrentPosition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public start()V
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/EndpointWarp;->startWarp(J)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/EndpointWarp;->stopWarp(J)V

    return-void
.end method

.method public update([BIJJ)V
    .locals 11

    iget-wide v2, p0, Lcom/immersion/content/EndpointWarp;->a:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/immersion/content/EndpointWarp;->updateWarp(J[BIJJ)V

    return-void
.end method
