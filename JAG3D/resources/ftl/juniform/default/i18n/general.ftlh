	<section>
		<h2>Summary</h2>
		<dl>
			<dt>JUniForm Version</dt><dd>v${version?string["#"]}</dd>
			<dt>Date of Calculation</dt><dd>${report_date?date?string("dd.MM.yyyy")}</dd>

			<dt>Geometric primitives</dt>
			<dd>
				<#if geometric_primitives??>
					<#list geometric_primitives as geometry>
						<ul>
							<li>
								<#if geometry.type == "QUADRATIC_CURVE">
									Quadratic curve
								<#elseif geometry.type == "LINE">
									Line
								<#elseif geometry.type == "CIRCLE">
									Circle
								<#elseif geometry.type == "ELLIPSE">
									Ellipse
								<#elseif geometry.type == "PLANE">
									Plane
								<#elseif geometry.type == "SPHERE">
									Sphere
								<#elseif geometry.type == "ELLIPSOID">
									Ellipsoid
								<#elseif geometry.type == "CYLINDER">
									Cylinder
								<#elseif geometry.type == "CONE">
									Cone
								<#elseif geometry.type == "PARABOLOID">
									Paraboloid
								<#elseif geometry.type == "QUADRATIC_SURFACE">
									Quadratic surface
								<#else>
									<#outputformat "plainText">${geometry.type}</#outputformat>
								</#if>
								<#outputformat "plainText">(${geometry.name})</#outputformat>
							</li>
						</ul>
					</#list>
				</#if>
			</dd>

			<dt>Probability Value &alpha; [%]</dt><dd>${test_statistic_probability_value?string[df_statistic]}</dd>
			<dt>Test Power (1-&beta;) [%]</dt><dd>${test_statistic_power_of_test?string[df_statistic]}</dd>

		</dl>
	</section>