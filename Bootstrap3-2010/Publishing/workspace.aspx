<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=14.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" meta:webpartpageexpansion="full" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/page-layouts-21.css %>" runat="server"/>
	<PublishingWebControls:EditModePanel runat="server" id="editmodestyles">
		<!-- Styles for edit mode only-->
		<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/edit-mode-21.css %>"
			After="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/page-layouts-21.css %>" runat="server"/>
	</PublishingWebControls:EditModePanel>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitleInTitleArea" runat="server">
	<SharePointWebControls:FieldValue FieldName="Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	<div class="row">
		<div class="col-md-12">
			<!-- Desktop Slider -->
			<div class="row">
				<div class="col-md-12">
					<!-- Main Banner Image - place in a paragraph to enforce the modular scale spacing -->
					<div class="row-WPZone">
						<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="bootstrapRow1" FrameType="None" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
					</div>    
				</div>
			</div>
			<!-- End Desktop Slider -->
			<div class="row">
				<div class="col-sm-12">
					<div class="row fourcapimg">
						<!-- Thumbnails -->
						<div class="col-md-3 col-sm-2"> 
							<div class="row-WPZone">
								<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="bootstrapRow2Column1" FrameType="None" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
							</div>
						</div>
						<div class="col-md-3 col-sm-2">
							<div class="row-WPZone">
								<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="bootstrapRow2Column2" FrameType="None" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
							</div>
						</div>
						<div class="col-md-3 col-sm-2">
							<div class="row-WPZone">
								<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="bootstrapRow2Column3" FrameType="None" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
							</div>
						</div>
						<div class="col-md-3 col-sm-2">
							<div class="row-WPZone">
								<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="bootstrapRow2Column4" FrameType="None" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
							</div>
						</div>
						<!-- End Thumbnails -->
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="row">
						<!-- Content -->
						<div class="col-md-8">
							<div class="panel radius">
								<div class="row">
									<div class="col-md-6">
										<div class="row-WPZone">
											<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="bootstrapRow3Column1" FrameType="None" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
										</div>
									</div>
									<div class="col-md-6">
										<div class="row-WPZone">
											<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="bootstrapRow3Column2" FrameType="None" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="row-WPZone">
								<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="bootstrapRow3Column3" FrameType="None" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
							</div>
						</div>
						<!-- End Content -->
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server"> 
	<SharePointWebControls:ListSiteMapPath runat="server" SiteMapProviders="CurrentNavigation" RenderCurrentNodeAsLink="false" PathSeparator="" CssClass="s4-breadcrumb" NodeStyle-CssClass="s4-breadcrumbNode" CurrentNodeStyle-CssClass="s4-breadcrumbCurrentNode" RootNodeStyle-CssClass="s4-breadcrumbRootNode" NodeImageOffsetX=0 NodeImageOffsetY=353 NodeImageWidth=16 NodeImageHeight=16 NodeImageUrl="/_layouts/images/fgimg.png" HideInteriorRootNodes="true" SkipLinkText=""/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server" />
<asp:Content ContentPlaceholderID="PlaceHolderNavSpacer" runat="server" />