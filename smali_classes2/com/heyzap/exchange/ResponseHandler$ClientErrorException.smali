.class public Lcom/heyzap/exchange/ResponseHandler$ClientErrorException;
.super Ljava/lang/Exception;
.source "ResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/exchange/ResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientErrorException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x740491c5058bfa5L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
