.class public final Lcom/vungle/publisher/protocol/message/RequestAdResponse$Factory$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "vungle"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/vungle/publisher/protocol/message/RequestAdResponse$a;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/protocol/message/RequestAdResponse$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/message/RequestAdResponse$CallToActionOverlay$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/protocol/message/JsonDeserializationFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 26
    const/4 v0, 0x0

    const-string v1, "members/com.vungle.publisher.protocol.message.RequestAdResponse$Factory"

    const/4 v2, 0x0

    const-class v3, Lcom/vungle/publisher/protocol/message/RequestAdResponse$a;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 36
    const-string v0, "com.vungle.publisher.protocol.message.RequestAdResponse$CallToActionOverlay$Factory"

    const-class v1, Lcom/vungle/publisher/protocol/message/RequestAdResponse$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/message/RequestAdResponse$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 37
    const-string v0, "com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$Factory"

    const-class v1, Lcom/vungle/publisher/protocol/message/RequestAdResponse$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/message/RequestAdResponse$Factory$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 38
    const-string v1, "members/com.vungle.publisher.protocol.message.JsonDeserializationFactory"

    const-class v2, Lcom/vungle/publisher/protocol/message/RequestAdResponse$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/protocol/message/RequestAdResponse$Factory$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 39
    return-void
.end method

.method public final getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/protocol/message/RequestAdResponse$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/vungle/publisher/protocol/message/RequestAdResponse$Factory$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/vungle/publisher/protocol/message/RequestAdResponse$Factory$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/protocol/message/RequestAdResponse$a;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/protocol/message/RequestAdResponse$a;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/protocol/message/RequestAdResponse$Factory$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/message/RequestAdResponse$CallToActionOverlay$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/message/RequestAdResponse$a;->a:Lcom/vungle/publisher/protocol/message/RequestAdResponse$CallToActionOverlay$Factory;

    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/protocol/message/RequestAdResponse$Factory$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/protocol/message/RequestAdResponse$a;->b:Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking$Factory;

    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/protocol/message/RequestAdResponse$Factory$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lcom/vungle/publisher/protocol/message/RequestAdResponse$a;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/protocol/message/RequestAdResponse$Factory$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/protocol/message/RequestAdResponse$a;)V

    return-void
.end method